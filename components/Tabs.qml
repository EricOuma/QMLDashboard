import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "./../components"


ColumnLayout {
    spacing: 2

    TabButton {
        index: 1
        url: "qrc:/views/Dashboard.qml"
        textIcon: "\uf3fd"
        fontFamily: fontawesomeSolid.name
        textTab: "Dashboard"
        Material.background: tabIndex ===  1 ? Material.Cyan : "white"
    }

    TabButton {
        index: 2
        url: "qrc:/views/Profile.qml"
        textIcon: "\uf406"
        fontFamily: fontawesomeSolid.name
        textTab: "Profile"
        Material.background: tabIndex ===  2 ? Material.Cyan : "white"
    }

    TabButton {
        index: 3
        url: "qrc:/views/Register.qml"
        textIcon: "\uf2bd"
        fontFamily: fontawesomeSolid.name
        textTab: "Register"
        Material.background: tabIndex ===  3 ? Material.Cyan : "white"
    }

    TabButton {
        index: 4
        url: "qrc:/views/Login.qml"
        textIcon: "\uf2f6"
        fontFamily: fontawesomeSolid.name
        textTab: "Login"
        Material.background: tabIndex ===  4 ? Material.Cyan : "white"
    }
}
