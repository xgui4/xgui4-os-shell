import QtQuick
import Quickshell
import Quickshell.Io 
import QtQuick.Layouts
import Quickshell.Hyprland
import "../config/config.js" as Config
import "../config/colors.js" as Colors

Text {
    text: "CPU: " + cpuUsage + "%"
    color: Colors.CPU
    font { family: colors.fontFamily;  pixelSize: 18; bold: true }
}