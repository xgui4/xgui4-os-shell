import QtQuick
import Quickshell
import Quickshell.Io 
import QtQuick.Layouts
import Quickshell.Hyprland
import "../config/config.js" as Config
import "../config/colors.js" as Colors

Text {
    text: Config.NAME
    font.weight : Font.Bold
    color: Colors.TITLE
    font.pixelSize: 18
}