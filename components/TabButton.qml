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
    Layout.fillHeight: true
    Layout.alignment: Qt.AlignCenter


    Pane {
        id: myRect
        anchors.fill: parent

        RowLayout {
            Layout.preferredWidth: parent.width
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
