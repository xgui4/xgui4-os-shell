import QtQuick
import Quickshell
import Quickshell.Io 
import QtQuick.Layouts
import Quickshell.Hyprland
import "../config/config.js" as Config
import "../config/colors.js" as Colors

// Memory
Text {
    text: "Mem: " + memUsage + "%"
    color: Colors.MEMORY
    font { family: Colors.fontFamily; pixelSize: 18; bold: true }
}