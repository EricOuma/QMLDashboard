import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Material 2.12

RoundPane {
    radius: 7
    Material.elevation: 2
    Material.background: "white"
    property alias descText: desc.text
    property alias countText: count.text
    property alias iconText: icon.text
    Column {
        anchors.fill: parent
        spacing: 20
        RowLayout {
            spacing: 25
            ColumnLayout {
                Label {
                    id: desc
                    color: "grey"
                    font.pixelSize: 14
                }
                Label {
                    id: count
                    font.bold: true
                    font.pixelSize: 17
                }
            }

            RoundPane {
                radius: 25
                Layout.preferredHeight: 50
                Layout.preferredWidth: 50
                Material.elevation: 1
                Material.background: "#00ffff"
                Label {
                    id: icon
                    font.pixelSize: 25
                    font.family: fontawesomeSolid.name
                    anchors.centerIn: parent
                }
            }
        }

        RowLayout {
            spacing: 20
            Row {
                Label {
                    text: "\uf062"
                    font.family: fontawesomeSolid.name
                    color: "green"
                    font.pixelSize: 14
                    font.bold: true
                }
                Label {
                    text: "3.48%"
                    color: "green"
                    font.pixelSize: 14
                    font.bold: true
                }
            }

            Label {
                Layout.alignment: Qt.AlignRight
                text: "Since last month"
                font.pixelSize: 14
            }
        }
    }
}
