import QtQuick
import Quickshell
import Quickshell.Io 
import QtQuick.Layouts
import "../config/config.js" as Config
import "../config/colors.js" as Colors

FloatingWindow {
	visible : true
	implicitWidth: 200
	implicitHeight: 100
	color : Colors.BACKGROUND_COLOR
	title: "About " + Config.NAME

	 ColumnLayout {
		
		Text {
			text: "About " + Config.NAME
			font.weight : Font.Bold
			color: Colors.TITLE
			font.pixelSize: 50
		}

		Text {
			text: "Version: " + Config.VERSION 
			color: Colors.LABEL
			font.pixelSize: 50
	    }

		Text {
			text : "Developer: " + Config.DEVELOPER
			color: Colors.LABEL
			font.pixelSize: 50
		}

		Text {
			text : "License: " + Config.LICENSE
			color: Colors.LABEL
			font.pixelSize: 50
		}

		Text {
			text : "OS: " + Quickshell.Io.getOSName()
			color: Colors.LABEL
			font.pixelSize: 50
		}
	}
}