import QtQuick
import Quickshell
import Quickshell.Io 
import QtQuick.Layouts
import "config/config.js" as Config
import "config/colors.js" as Colors

FloatingWindow {
	visible : true
	implicitWidth: 200
	implicitHeight: 100
	color : Colors.BACKGROUND_COLOR
	title: "About " + Config.NAME

	 ColumnLayout {
		
		Text {
			text: "About Xgui4 OS Shell"
			font.weight : Font.Bold
			color: Colors.TITLE
			font.pixelSize: 18
		}

		Text {
			text: "Version: " + Config.VERSION 
			color: Colors.LABEL
			font.pixelSize: 18
	    }
	}
}