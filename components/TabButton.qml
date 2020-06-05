import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12


Pane {
    property alias textIcon: icon.text
    property alias textTab: tabname.text
    property alias fontFamily: icon.font.family
    property int index
    property string url

    Layout.fillWidth: true
    Layout.preferredHeight: 50

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.OpenHandCursor
        onClicked: {
            tabIndex = index
            stackId.replace(Qt.resolvedUrl(url))
        }

        RowLayout {
            anchors.fill: parent
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
