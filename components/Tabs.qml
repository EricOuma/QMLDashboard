import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "./../components"


ColumnLayout {
    spacing: 2
    property int pageIndex: 1

    TabButton {
        Layout.fillWidth: true
        Layout.preferredWidth: parent.width
        Layout.fillHeight: true
        textIcon: "\uf3fd"
        fontFamily: fontawesomeSolid.name
        textTab: "Dashboard"
        Material.background: Material.Cyan
//        onClicked: stack.push(one)
        onClicked: {
            console.log("Dashboard Clicked")
        }
    }

    TabButton {
        textIcon: "\uf406"
        fontFamily: fontawesomeSolid.name
        textTab: "Profile"
//        Material.background: pageIndex ===  2 ? "white" : Material.Cyan
        onClicked: stack.push(two)
    }

TabButton {
            Layout.preferredWidth: parent.width
            textIcon: "\uf2bd"
            fontFamily: fontawesomeSolid.name
            textTab: "Register"
    //        Material.background: pageIndex ===  3 ? "white" : Material.Cyan
            onClicked: {
                console.log("Register Clicked")
            }
        }




    TabButton {
        Layout.preferredWidth: parent.width
        textIcon: "\uf2f6"
        fontFamily: fontawesomeSolid.name
        textTab: "Login"
//        Material.background: pageIndex ===  4 ? "white" : Material.Cyan
        onClicked: {
            console.log("Login Clicked")
        }
    }


}
