import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

MouseArea {
//    cursorShape: Qt.OpenHandCursor

    property alias textIcon: icon.text
    property alias textTab: tabname.text
    property alias fontFamily: icon.font.family

    Layout.preferredHeight: 50
    Layout.fillWidth: true
    Layout.alignment: Qt.AlignCenter


    Rectangle {
        id: myRect
        anchors.fill: parent
        Material.background: Material.Cyan

        RowLayout {
            spacing: 12
            Label {
                id: icon
                font.pixelSize: 15
                color: "gray"
            }
            Label {
                id: tabname
                font.pixelSize: 15
                color: "gray"
            }
        }
    }


}
