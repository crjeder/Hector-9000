# Component Architecture
```kroki-blockdiag
blockdiag {
  orientation = portrait

  mcu [label = "Microcontroller", color = "pink"];
  air [label ="Compressed Air", color = "orange"];
  v [label = "Valves", color = "green"];
  ui [label = "Display / Button", color = "lightblue"];
  www [label = "Cocktail Browser", color = "lightblue"];
  s [label = "Sensors", color = "purple"]

  www -> "REST API" -> mcu;
  mcu -> air;
  mcu -> v;
  mcu -> ui;
  mcu -> s;

  s -> "scales";
  s -> "air pressure"
}
```
# Liquid Delivery System
Principle: Compressed air enters the bottle through a tube that ends just past the stopper. This overpressure pushes the liquid out through a second tube that starts just above the bottle bottom, directing it towards the glass. The valve in the air tube controls the flow rate.

```kroki-excalidraw
{
  "type": "excalidraw",
  "version": 2,
  "source": "https://excalidraw.com",
  "elements": [
    {
      "type": "text",
      "id": "t-title",
      "x": 200, "y": -60, "width": 320, "height": 35,
      "text": "Liquid Delivery System",
      "fontSize": 28, "fontFamily": 1,
      "textAlign": "center", "verticalAlign": "top", "baseline": 25,
      "strokeColor": "#000000", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 100,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "rectangle",
      "id": "r-air-src",
      "x": 20, "y": 6, "width": 90, "height": 28,
      "fillStyle": "solid", "backgroundColor": "#a9e34b",
      "strokeColor": "#5c940d", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 101,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": ["arr-src-valve"]
    },
    {
      "type": "text",
      "id": "t-air-src",
      "x": 25, "y": 13, "width": 80, "height": 14,
      "text": "Air Supply",
      "fontSize": 13, "fontFamily": 1,
      "textAlign": "center", "verticalAlign": "top", "baseline": 11,
      "strokeColor": "#000000", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 102,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "arrow",
      "id": "arr-src-valve",
      "x": 110, "y": 20, "width": 30, "height": 0,
      "points": [[0,0],[30,0]],
      "startArrowhead": null, "endArrowhead": "arrow",
      "startBinding": {"elementId": "r-air-src", "focus": 0, "gap": 1},
      "endBinding": {"elementId": "r-valve", "focus": 0, "gap": 1},
      "strokeColor": "#000000", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 103,
      "groupIds": [], "strokeSharpness": "round",
      "boundElementIds": [], "lastCommittedPoint": null
    },
    {
      "type": "rectangle",
      "id": "r-valve",
      "x": 140, "y": 8, "width": 60, "height": 24,
      "fillStyle": "solid", "backgroundColor": "#ffa94d",
      "strokeColor": "#e67700", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 104,
      "groupIds": [], "strokeSharpness": "sharp",
      "boundElementIds": ["arr-src-valve", "arr-valve-cap"]
    },
    {
      "type": "text",
      "id": "t-valve",
      "x": 148, "y": 13, "width": 46, "height": 14,
      "text": "Valve",
      "fontSize": 13, "fontFamily": 1,
      "textAlign": "center", "verticalAlign": "top", "baseline": 11,
      "strokeColor": "#000000", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 105,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "arrow",
      "id": "arr-valve-cap",
      "x": 200, "y": 20, "width": 120, "height": 0,
      "points": [[0,0],[120,0]],
      "startArrowhead": null, "endArrowhead": "arrow",
      "startBinding": {"elementId": "r-valve", "focus": 0, "gap": 1},
      "endBinding": {"elementId": "r-air-tube", "focus": 0, "gap": 1},
      "strokeColor": "#000000", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 106,
      "groupIds": [], "strokeSharpness": "round",
      "boundElementIds": [], "lastCommittedPoint": null
    },
    {
      "type": "rectangle",
      "id": "r-cap",
      "x": 270, "y": 52, "width": 170, "height": 36,
      "fillStyle": "solid", "backgroundColor": "#868e96",
      "strokeColor": "#343a40", "strokeWidth": 2, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 107,
      "groupIds": [], "strokeSharpness": "sharp",
      "boundElementIds": []
    },
    {
      "type": "text",
      "id": "t-cap",
      "x": 290, "y": 62, "width": 130, "height": 14,
      "text": "Stopper / Cap",
      "fontSize": 12, "fontFamily": 1,
      "textAlign": "center", "verticalAlign": "top", "baseline": 10,
      "strokeColor": "#ffffff", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 108,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "rectangle",
      "id": "r-bottle",
      "x": 280, "y": 88, "width": 150, "height": 310,
      "fillStyle": "solid", "backgroundColor": "transparent",
      "strokeColor": "#343a40", "strokeWidth": 2, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 109,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "rectangle",
      "id": "r-liquid",
      "x": 282, "y": 228, "width": 146, "height": 168,
      "fillStyle": "solid", "backgroundColor": "#74c0fc",
      "strokeColor": "#1971c2", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 80, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 110,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "text",
      "id": "t-air-space",
      "x": 296, "y": 140, "width": 120, "height": 20,
      "text": "Air space",
      "fontSize": 14, "fontFamily": 1,
      "textAlign": "center", "verticalAlign": "top", "baseline": 14,
      "strokeColor": "#495057", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 111,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "text",
      "id": "t-liquid-lbl",
      "x": 308, "y": 295, "width": 100, "height": 20,
      "text": "Liquid",
      "fontSize": 14, "fontFamily": 1,
      "textAlign": "center", "verticalAlign": "top", "baseline": 14,
      "strokeColor": "#1971c2", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 112,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "rectangle",
      "id": "r-air-tube",
      "x": 316, "y": 20, "width": 8, "height": 158,
      "fillStyle": "solid", "backgroundColor": "#ced4da",
      "strokeColor": "#868e96", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 113,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "text",
      "id": "t-air-tube-lbl",
      "x": 285, "y": 110, "width": 28, "height": 60,
      "text": "air\ntube\n(short)",
      "fontSize": 10, "fontFamily": 1,
      "textAlign": "right", "verticalAlign": "top", "baseline": 10,
      "strokeColor": "#495057", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 114,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "rectangle",
      "id": "r-liq-tube",
      "x": 388, "y": 20, "width": 8, "height": 366,
      "fillStyle": "solid", "backgroundColor": "#ced4da",
      "strokeColor": "#868e96", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 115,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "text",
      "id": "t-liq-tube-lbl",
      "x": 400, "y": 130, "width": 26, "height": 90,
      "text": "liq.\ntube\n(long,\nto\nbottom)",
      "fontSize": 10, "fontFamily": 1,
      "textAlign": "left", "verticalAlign": "top", "baseline": 10,
      "strokeColor": "#495057", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 116,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "arrow",
      "id": "arr-air-down",
      "x": 320, "y": 100, "width": 0, "height": 60,
      "points": [[0,0],[0,60]],
      "startArrowhead": null, "endArrowhead": "arrow",
      "startBinding": null, "endBinding": null,
      "strokeColor": "#5c940d", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "dashed",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 117,
      "groupIds": [], "strokeSharpness": "round",
      "boundElementIds": [], "lastCommittedPoint": null
    },
    {
      "type": "arrow",
      "id": "arr-liq-up",
      "x": 392, "y": 360, "width": 0, "height": -260,
      "points": [[0,0],[0,-260]],
      "startArrowhead": null, "endArrowhead": "arrow",
      "startBinding": null, "endBinding": null,
      "strokeColor": "#1971c2", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "dashed",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 118,
      "groupIds": [], "strokeSharpness": "round",
      "boundElementIds": [], "lastCommittedPoint": null
    },
    {
      "type": "arrow",
      "id": "arr-liq-out",
      "x": 392, "y": 20, "width": 143, "height": 280,
      "points": [[0,0],[60,0],[143,280]],
      "startArrowhead": null, "endArrowhead": "arrow",
      "startBinding": null,
      "endBinding": {"elementId": "r-glass", "focus": 0, "gap": 1},
      "strokeColor": "#1971c2", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 2, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 119,
      "groupIds": [], "strokeSharpness": "round",
      "boundElementIds": [], "lastCommittedPoint": null
    },
    {
      "type": "rectangle",
      "id": "r-glass",
      "x": 490, "y": 300, "width": 90, "height": 100,
      "fillStyle": "solid", "backgroundColor": "#a5d8ff",
      "strokeColor": "#1971c2", "strokeWidth": 2, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 120,
      "groupIds": [], "strokeSharpness": "sharp",
      "boundElementIds": ["arr-liq-out"]
    },
    {
      "type": "text",
      "id": "t-glass",
      "x": 505, "y": 370, "width": 60, "height": 20,
      "text": "Glass",
      "fontSize": 14, "fontFamily": 1,
      "textAlign": "center", "verticalAlign": "top", "baseline": 14,
      "strokeColor": "#1971c2", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 121,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "text",
      "id": "t-air-in-lbl",
      "x": 130, "y": 40, "width": 130, "height": 16,
      "text": "compressed air →",
      "fontSize": 12, "fontFamily": 1,
      "textAlign": "left", "verticalAlign": "top", "baseline": 12,
      "strokeColor": "#5c940d", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 122,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    },
    {
      "type": "text",
      "id": "t-liq-out-lbl",
      "x": 430, "y": 40, "width": 120, "height": 16,
      "text": "→ liquid out",
      "fontSize": 12, "fontFamily": 1,
      "textAlign": "left", "verticalAlign": "top", "baseline": 12,
      "strokeColor": "#1971c2", "backgroundColor": "transparent",
      "fillStyle": "hachure", "strokeWidth": 1, "strokeStyle": "solid",
      "roughness": 1, "opacity": 100, "angle": 0,
      "isDeleted": false, "version": 1, "versionNonce": 123,
      "groupIds": [], "strokeSharpness": "sharp", "boundElementIds": []
    }
  ],
  "appState": {
    "viewBackgroundColor": "#ffffff",
    "gridSize": 20
  }
}
```

## Valve
![roller-clamp](images/roller_clamp.jpg)  
Prinziple: roller clamps like those used in medicine: A roll moves along a guide and squeezes the silicon hose until no liquid flows through.  
The roller is made of PTFE and is pushed by a servo.

```kroki-excalidraw
{
  "type": "excalidraw",
  "version": 2,
  "source": "https://excalidraw.com",
  "elements": [
    {"type":"text","id":"rc-title","x":120,"y":-55,"width":370,"height":30,"text":"Roller Clamp Valve","fontSize":24,"fontFamily":1,"textAlign":"center","verticalAlign":"top","baseline":22,"strokeColor":"#000000","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1001,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"line","id":"rc-div","x":310,"y":-40,"width":0,"height":290,"points":[[0,0],[0,290]],"startArrowhead":null,"endArrowhead":null,"strokeColor":"#ced4da","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"dashed","roughness":0,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1002,"groupIds":[],"strokeSharpness":"round","boundElementIds":[]},
    {"type":"text","id":"rc-oh","x":60,"y":-38,"width":180,"height":26,"text":"OPEN","fontSize":22,"fontFamily":1,"textAlign":"center","verticalAlign":"top","baseline":20,"strokeColor":"#2f9e44","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1003,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"text","id":"rc-ch","x":370,"y":-38,"width":180,"height":26,"text":"CLOSED","fontSize":22,"fontFamily":1,"textAlign":"center","verticalAlign":"top","baseline":20,"strokeColor":"#c92a2a","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1004,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"rectangle","id":"l-srv","x":115,"y":0,"width":70,"height":45,"fillStyle":"solid","backgroundColor":"#868e96","strokeColor":"#343a40","strokeWidth":2,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1010,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"text","id":"l-srv-t","x":117,"y":14,"width":66,"height":18,"text":"Servo","fontSize":13,"fontFamily":1,"textAlign":"center","verticalAlign":"top","baseline":13,"strokeColor":"#ffffff","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1011,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"line","id":"l-arm","x":150,"y":45,"width":0,"height":35,"points":[[0,0],[0,35]],"startArrowhead":null,"endArrowhead":null,"strokeColor":"#343a40","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":3,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1012,"groupIds":[],"strokeSharpness":"round","boundElementIds":[]},
    {"type":"rectangle","id":"l-gL","x":112,"y":60,"width":6,"height":135,"fillStyle":"solid","backgroundColor":"#495057","strokeColor":"#212529","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1013,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"rectangle","id":"l-gR","x":182,"y":60,"width":6,"height":135,"fillStyle":"solid","backgroundColor":"#495057","strokeColor":"#212529","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1014,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"ellipse","id":"l-rol","x":116,"y":80,"width":68,"height":60,"fillStyle":"solid","backgroundColor":"#f8f9fa","strokeColor":"#495057","strokeWidth":2,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1015,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"text","id":"l-rol-t","x":118,"y":103,"width":64,"height":14,"text":"PTFE","fontSize":12,"fontFamily":1,"textAlign":"center","verticalAlign":"top","baseline":11,"strokeColor":"#495057","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1016,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"rectangle","id":"l-hT","x":30,"y":155,"width":250,"height":8,"fillStyle":"solid","backgroundColor":"#74c0fc","strokeColor":"#1971c2","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1017,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"rectangle","id":"l-lum","x":30,"y":163,"width":250,"height":24,"fillStyle":"solid","backgroundColor":"#a5d8ff","strokeColor":"#1971c2","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1018,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"rectangle","id":"l-hB","x":30,"y":187,"width":250,"height":8,"fillStyle":"solid","backgroundColor":"#74c0fc","strokeColor":"#1971c2","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1019,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"rectangle","id":"l-bp","x":30,"y":195,"width":250,"height":14,"fillStyle":"solid","backgroundColor":"#495057","strokeColor":"#212529","strokeWidth":2,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1020,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"arrow","id":"l-fi","x":5,"y":175,"width":25,"height":0,"points":[[0,0],[25,0]],"startArrowhead":null,"endArrowhead":"arrow","startBinding":null,"endBinding":null,"strokeColor":"#2f9e44","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":2,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1021,"groupIds":[],"strokeSharpness":"round","boundElementIds":[],"lastCommittedPoint":null},
    {"type":"arrow","id":"l-fo","x":280,"y":175,"width":25,"height":0,"points":[[0,0],[25,0]],"startArrowhead":null,"endArrowhead":"arrow","startBinding":null,"endBinding":null,"strokeColor":"#2f9e44","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":2,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1022,"groupIds":[],"strokeSharpness":"round","boundElementIds":[],"lastCommittedPoint":null},
    {"type":"text","id":"l-hl","x":30,"y":213,"width":250,"height":14,"text":"Silicone Hose","fontSize":11,"fontFamily":1,"textAlign":"center","verticalAlign":"top","baseline":11,"strokeColor":"#1971c2","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1023,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"text","id":"l-gl","x":10,"y":72,"width":95,"height":14,"text":"Guide Rail ->","fontSize":11,"fontFamily":1,"textAlign":"right","verticalAlign":"top","baseline":11,"strokeColor":"#343a40","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1024,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"rectangle","id":"r-srv","x":425,"y":0,"width":70,"height":45,"fillStyle":"solid","backgroundColor":"#868e96","strokeColor":"#343a40","strokeWidth":2,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1030,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"text","id":"r-srv-t","x":427,"y":14,"width":66,"height":18,"text":"Servo","fontSize":13,"fontFamily":1,"textAlign":"center","verticalAlign":"top","baseline":13,"strokeColor":"#ffffff","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1031,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"line","id":"r-arm","x":460,"y":45,"width":0,"height":62,"points":[[0,0],[0,62]],"startArrowhead":null,"endArrowhead":null,"strokeColor":"#343a40","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":3,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1032,"groupIds":[],"strokeSharpness":"round","boundElementIds":[]},
    {"type":"rectangle","id":"r-gL","x":422,"y":60,"width":6,"height":135,"fillStyle":"solid","backgroundColor":"#495057","strokeColor":"#212529","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1033,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"rectangle","id":"r-gR","x":492,"y":60,"width":6,"height":135,"fillStyle":"solid","backgroundColor":"#495057","strokeColor":"#212529","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1034,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"ellipse","id":"r-rol","x":426,"y":107,"width":68,"height":60,"fillStyle":"solid","backgroundColor":"#f8f9fa","strokeColor":"#495057","strokeWidth":2,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1035,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"text","id":"r-rol-t","x":428,"y":130,"width":64,"height":14,"text":"PTFE","fontSize":12,"fontFamily":1,"textAlign":"center","verticalAlign":"top","baseline":11,"strokeColor":"#495057","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1036,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"rectangle","id":"r-hT","x":340,"y":163,"width":250,"height":10,"fillStyle":"solid","backgroundColor":"#74c0fc","strokeColor":"#1971c2","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1037,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"rectangle","id":"r-lum","x":340,"y":173,"width":250,"height":4,"fillStyle":"solid","backgroundColor":"#a5d8ff","strokeColor":"#1971c2","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1038,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"rectangle","id":"r-hB","x":340,"y":177,"width":250,"height":10,"fillStyle":"solid","backgroundColor":"#74c0fc","strokeColor":"#1971c2","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1039,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"rectangle","id":"r-bp","x":340,"y":195,"width":250,"height":14,"fillStyle":"solid","backgroundColor":"#495057","strokeColor":"#212529","strokeWidth":2,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1040,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"text","id":"r-xL","x":318,"y":163,"width":20,"height":22,"text":"X","fontSize":18,"fontFamily":1,"textAlign":"center","verticalAlign":"top","baseline":16,"strokeColor":"#c92a2a","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1041,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"text","id":"r-xR","x":592,"y":163,"width":20,"height":22,"text":"X","fontSize":18,"fontFamily":1,"textAlign":"center","verticalAlign":"top","baseline":16,"strokeColor":"#c92a2a","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1042,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"text","id":"r-hl","x":340,"y":213,"width":250,"height":14,"text":"Silicone Hose (pinched shut)","fontSize":11,"fontFamily":1,"textAlign":"center","verticalAlign":"top","baseline":11,"strokeColor":"#c92a2a","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1043,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]},
    {"type":"text","id":"rc-note","x":20,"y":234,"width":580,"height":36,"text":"Servo arm pushes PTFE roller down guide rail -> squeezes hose against base plate -> no flow.\nRetract roller -> hose springs open -> liquid flows.","fontSize":11,"fontFamily":1,"textAlign":"center","verticalAlign":"top","baseline":11,"strokeColor":"#495057","backgroundColor":"transparent","fillStyle":"hachure","strokeWidth":1,"strokeStyle":"solid","roughness":1,"opacity":100,"angle":0,"isDeleted":false,"version":1,"versionNonce":1050,"groupIds":[],"strokeSharpness":"sharp","boundElementIds":[]}
  ],
  "appState": {"viewBackgroundColor": "#ffffff", "gridSize": 20}
}
```

## Volume Measurement
To dispense the exact amounts of liquid the volume has to be measured. Direct measurement is difficult, therefore a wight scale continuously measures the weight of the glass. Together with the known density, the volume can be determined. The scales serve as a glass presence sensor, too.

## Compressed Air System
### Generation
A aquarium air pump is used to generate compressed air in a container. The pump runs on 230 V and is controlled by an [relay](https://www.pohltechnik.com/de/ssr-relais/ssr-lastschaltung-230v/ssr-halbleiter-solid-state-relais-dc-ac-230v-ac-10-a)
A GPIO on the microcontroller controls the relay.

## Air Distribution
![Aquarium Luftverteiler](images/Luftverteiler.png)


## Valve Block
How to place the individual valves to safe space?
