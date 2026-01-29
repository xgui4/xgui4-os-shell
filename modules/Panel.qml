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

                Text {
                    color : Colors.FOREGROUND_COLOR
                    text : "󰣇"
                    MouseArea {
                        anchors.fill: parent
                        onClicked: Hyprland.dispatch("exec rofi -show drun")
                    }
                }

                Text {
                    text: "Xgui4 OS Shell"
                    font.weight : Font.Bold
                    color: Colors.TITLE
                    font.pixelSize: 18
                }

                // Workspaces
                Repeater {
                    model: 9
                    Text {
                        property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
                        property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
                        text: index + 1
                        color: isActive ? Colors.WORKSPACE_CURRENT : (ws ? Colors.WORKSPACE_ACTIVE : Colors.WORKSPACE_INACTIVE)
                        font { family: root.fontFamily; pixelSize: root.fontSize; bold: true }
                        MouseArea {
                            anchors.fill: parent
                            onClicked: Hyprland.dispatch("workspace " + (index + 1))
                        }
                    }
                }

                Item { Layout.fillWidth: true }

                // CPU
                Text {
                    text: "CPU: " + cpuUsage + "%"
                    color: Colors.CPU
                    font { family: colors.fontFamily;  pixelSize: 18; bold: true }
                    }

                // Memory
                Text {
                    text: "Mem: " + memUsage + "%"
                    color: Colors.MEMORY
                    font { family: Colors.fontFamily; pixelSize: 18; bold: true }
                }

                ClockWidget {
                    color: Colors.FOREGROUND_COLOR
                }

                Text {
                    text: " Version: " + Config.VERSION 
                    color: Colors.LABEL
                    font.pixelSize: 18
                }
            }
        }
    }
}