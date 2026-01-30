import QtQuick
import Quickshell
import Quickshell.Io 
import QtQuick.Layouts
import Quickshell.Hyprland
import "../config/config.js" as Config
import "../config/colors.js" as Colors

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: root

            // System data
            property int cpuUsage: 0
            property int memUsage: 0
            property var lastCpuIdle: 0
            property var lastCpuTotal: 0

            property string fontFamily: "JetBrainsMono Nerd Font"
            property int fontSize: 14

            required property var modelData
            screen: modelData

            anchors {
                bottom : false
                top: true
                left: true
                right: true
            }

            color : Colors.BACKGROUND_COLOR

            implicitHeight: 25
            RowLayout {
                anchors.fill: parent
                spacing: 8

                Logo {}

                ShellName {}

                HyprlandWorkspaces {}

                Item { Layout.fillWidth: true }

                CPU {}

                Memory {}

                ClockWidget { color: Colors.FOREGROUND_COLOR }

                Version {}
            }
        }
    }
}