import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.12

RowLayout {

    TextField {
        id: search
        font.pixelSize: 15
        placeholderText: "Search"
        style: TextFieldStyle {
                textColor: "black"
                background: Rectangle {
                    Material.background: Material.Grey
                    id: searchBg
                    radius: 30
                    implicitHeight: 50
                    implicitWidth: search.activeFocus ? 350 : 250
                    border.width: 0

                }
            }
    }

    RowLayout {
        spacing: 25
        Layout.alignment: Qt.AlignRight
        Layout.fillWidth: true
        Label {
            id: notification
            text: "\uf0f3"
            font.family: fontawesomeSolid.name
            font.pixelSize: 20
            color: "white"
        }
        Label {
            id: options
            text: "\uf009"
            font.family: fontawesomeSolid.name
            font.pixelSize: 15
            color: "white"
        }
        RoundImage {
            id: userimage
            sourceSize.width: 40
            sourceSize.height: 40
            fillMode: Image.PreserveAspectFit
            imgSource: "qrc:/assets/images/user.jpg"
        }
        Label {
            id: username
            text: "John Doe"
            font.family: "Helvetica"
            font.pixelSize: 15
            color: "white"
        }
    }
}
