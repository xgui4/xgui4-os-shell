import QtQuick
import Quickshell
import Quickshell.Io 
import QtQuick.Layouts
import "config/config.js" as Config
import "config/colors.js" as Colors


Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData

            anchors {
                bottom : true
                top: false
                left: true
                right: true
            }

            color : Colors.BACKGROUND_COLOR

            implicitHeight: 25

            ClockWidget {
                anchors.centerIn: parent
                color: Colors.FOREGROUND_COLOR
            }
            
            RowLayout {
                Text {
                    text: "Xgui4 OS Shell"
                    font.weight : Font.Bold
                    color: Colors.TITLE
                    font.pixelSize: 18
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