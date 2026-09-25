import QtQuick
import Quickshell
import Quickshell.Io 
import QtQuick.Layouts
import Quickshell.Hyprland
import "../config/config.js" as Config
import "../config/colors.js" as Colors

Text {
    color : Colors.FOREGROUND_COLOR
    text : ""
    MouseArea {
        anchors.fill: parent
        onClicked: Hyprland.dispatch("hl.dsp.exec_cmd(\"" + Config.Launcher + "\")")
    }
}