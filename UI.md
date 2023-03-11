# Options
- Fully integrated into the device
- Use moblile phones to order drinks
# Mobile Phone Option
Advantages:
- GUI can be as fancy as it gets
- UI on the device can be simlified
Disadvatages:
- needs more infrastucture (WiFi, Web Server, DNS)
- needs setup on the mobile devices (join wifi)
- security concerns
- more expensive
- device can't be operated wihtout infrastructure anymore
## Input
- QR-code from paper or mobile phone
- start / stop button
### QR-code Reader
Options:
- ZBar
  - [ZBar](https://github.com/ZBar/ZBar) unmaintained?
  - [ZBar](https://github.com/mchehab/zbar) current?
- Rust
  - [qrtool](https://crates.io/crates/qrtool)
  - [quircs](https://crates.io/crates/quircs)
  - [bardecoder](https://crates.io/crates/bardecoder)

## Output
Traffic light: 
- Green: ready for orders
- Amber: busy
- Red:
- Blinking: Error

# Fully Integrated
## Input
Mouse with scroll wheel
  - speed up scroll wheel:
    https://support.mozilla.org/de/questions/1019147
## GUI
  https://github.com/mikeyhogarth/cocktails

## Output
[HDMI Display](https://github.com/waveshare/LCD-show) (touch not necessary)
