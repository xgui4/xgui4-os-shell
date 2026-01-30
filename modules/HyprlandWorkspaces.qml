import QtQuick
import Quickshell
import Quickshell.Io 
import QtQuick.Layouts
import Quickshell.Hyprland
import "../config/config.js" as Config
import "../config/colors.js" as Colors

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