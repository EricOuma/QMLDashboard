import QtQuick 2.14
import Qt.labs.qmlmodels 1.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

RoundPane {
    Material.elevation: 1
    Material.background: "white"
    height: 350

    ColumnLayout {
        anchors.fill: parent
        spacing: 4
        RowLayout {
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: 50

            Label {
                text: "Page visits"
                color: "gray"
                font.bold: true
                font.pixelSize: 16
            }
            RoundPane {
                Layout.alignment: Qt.AlignRight
                radius: 3
                Material.elevation: 1
                Material.background: "white"
                Label {
                    anchors.centerIn: parent
                    text: "See all"
                }
            }
        }

        TableView {
            Layout.preferredWidth: parent.width
            Layout.fillWidth: true
            Layout.fillHeight: true
            columnSpacing: 0
            rowSpacing: 0
            clip: true

            model: TableModel {
                TableModelColumn { display: "page name" }
                TableModelColumn { display: "visitors" }
                TableModelColumn { display: "unique users" }
                TableModelColumn { display: "bounce rate" }

                rows: [
                    {
                        "page name": "/argon/charts.html",
                        "visitors": "4,569",
                        "unique users": "340",
                        "bounce rate": "3333667676746,53%"
                    },
                    {
                        "page name": "/argon/index.html",
                        "visitors": "3,985",
                        "unique users": "319",
                        "bounce rate": "46,53%"
                    },
                    {
                        "page name": "/argon/charts.html",
                        "visitors": "3,518,883",
                        "unique users": "294",
                        "bounce rate": "36,49%"
                    },
                    {
                        "page name": "/argon/tables.html",
                        "visitors": "2,050",
                        "unique users": "147",
                        "bounce rate": "50,87%"
                    },
                    {
                        "page name": "/argon/profile.html",
                        "visitors": "1,795",
                        "unique users": "190",
                        "bounce rate": "46,53%"
                    }
                ]
            }

            delegate: Rectangle {
                implicitWidth: text.implicitWidth + 50
                implicitHeight: 50
                border.width: 1

                Label {
                    id: text
                    text: display
                    anchors.centerIn: parent
                    font.family: "Helvetica"
                    font.pixelSize: 14
                    color: "gray"
                }
            }
        }
    }


}
