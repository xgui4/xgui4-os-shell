import QtQuick
import Quickshell
import Quickshell.Io 
import QtQuick.Layouts
import Quickshell.Hyprland
import "../config/config.js" as Config
import "../config/colors.js" as Colors

Text {
    text: " Version: " + Config.VERSION 
    color: Colors.LABEL
    font.pixelSize: 18
}