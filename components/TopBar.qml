import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 1.4

RowLayout {
    TextField {
        //            Layout.alignment: Qt.AlignLeft
        font.pixelSize: 15
        placeholderText: qsTr("Search")
    }

    RowLayout {
        //            Layout.alignment: Qt.AlignRight
        spacing: 1
        Label {
            id: notification
            text: "\uf0f3"
            font.family: fontawesomeSolid.name
            font.pixelSize: 15
        }
        Label {
            id: options
            text: "\uf009"
            font.family: fontawesomeSolid.name
            font.pixelSize: 15
        }
        Image {
            id: userimage
            Layout.preferredWidth: 40
            Layout.preferredHeight: 40
            fillMode: Image.PreserveAspectFit
            source: "qrc:/assets/images/user.jpg"
        }
        Label {
            id: username
            text: "John Doe"
            font.pixelSize: 15
        }
    }
}
