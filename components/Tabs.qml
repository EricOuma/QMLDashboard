import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "./../components"


ColumnLayout {
    spacing: 2
    property int pageIndex: 1

    TabButton {
        textIcon: "\uf3fd"
        fontFamily: fontawesomeSolid.name
        textTab: "Dashboard"
        Material.background: Material.Cyan
        onClicked: {
        }
    }

    TabButton {
        textIcon: "\uf406"
        fontFamily: fontawesomeSolid.name
        textTab: "Profile"
//        Material.background: pageIndex ===  2 ? "white" : Material.Cyan
        onClicked: {
        }
    }

    TabButton {
        textIcon: "\uf2bd"
        fontFamily: fontawesomeSolid.name
        textTab: "Register"
//        Material.background: pageIndex ===  3 ? "white" : Material.Cyan
        onClicked: {
        }
    }

    TabButton {
        textIcon: "\uf2f6"
        fontFamily: fontawesomeSolid.name
        textTab: "Login"
//        Material.background: pageIndex ===  4 ? "white" : Material.Cyan
        onClicked: {
        }
    }


}
