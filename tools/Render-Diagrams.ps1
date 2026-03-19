#Requires -Version 5.1
<#
.SYNOPSIS
    Renders diagram source files in diagrams/ to SVG via the Kroki API.

.DESCRIPTION
    Sends each file in the diagrams/ directory to https://kroki.io and saves
    the resulting SVG to images/. File extension determines the diagram type.

    Supported extensions:
      .diag / .blockdiag  -> blockdiag
      .excalidraw         -> excalidraw
      .puml / .plantuml   -> plantuml
      .mermaid            -> mermaid

.PARAMETER DiagramsDir
    Path to the diagrams source directory. Defaults to ..\diagrams relative to
    the script location.

.PARAMETER OutputDir
    Path to write SVG files. Defaults to ..\images relative to the script location.

.PARAMETER KrokiUrl
    Base URL of the Kroki instance. Defaults to https://kroki.io.

.EXAMPLE
    .\Render-Diagrams.ps1

.EXAMPLE
    .\Render-Diagrams.ps1 -KrokiUrl http://localhost:8000
#>
param(
    [string] $DiagramsDir = (Join-Path $PSScriptRoot '..\diagrams'),
    [string] $OutputDir   = (Join-Path $PSScriptRoot '..\images'),
    [string] $KrokiUrl    = 'https://kroki.io'
)

$typeMap = @{
    diag       = 'blockdiag'
    blockdiag  = 'blockdiag'
    excalidraw = 'excalidraw'
    puml       = 'plantuml'
    plantuml   = 'plantuml'
    mermaid    = 'mermaid'
}

$DiagramsDir = Resolve-Path $DiagramsDir
$OutputDir   = [System.IO.Path]::GetFullPath($OutputDir)

if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir | Out-Null
}

$files = Get-ChildItem -Path $DiagramsDir -File
if ($files.Count -eq 0) {
    Write-Warning "No files found in $DiagramsDir"
    exit 0
}

$ok = 0
$failed = 0

foreach ($file in $files) {
    $ext = $file.Extension.TrimStart('.').ToLower()

    if (-not $typeMap.ContainsKey($ext)) {
        Write-Host "  SKIP  $($file.Name) (unknown extension .$ext)" -ForegroundColor DarkGray
        continue
    }

    $type      = $typeMap[$ext]
    $outFile   = Join-Path $OutputDir "$($file.BaseName).svg"
    $endpoint  = "$KrokiUrl/$type/svg"

    Write-Host "  -->   $($file.Name) ($type) -> images/$($file.BaseName).svg" -ForegroundColor Cyan

    try {
        $body = [System.IO.File]::ReadAllBytes($file.FullName)

        $response = Invoke-RestMethod `
            -Uri $endpoint `
            -Method Post `
            -ContentType 'text/plain' `
            -Body $body `
            -ErrorAction Stop

        [System.IO.File]::WriteAllText($outFile, $response, [System.Text.Encoding]::UTF8)
        Write-Host "        OK" -ForegroundColor Green
        $ok++
    }
    catch {
        Write-Host "        FAILED: $_" -ForegroundColor Red
        $failed++
    }
}

Write-Host ""
Write-Host "Done: $ok rendered, $failed failed." -ForegroundColor ($failed -gt 0 ? 'Yellow' : 'Green')
if ($failed -gt 0) { exit 1 }
