import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtCharts 2.12

import "../components"

Pane {
    Layout.preferredHeight: 350
    Layout.fillWidth: true
    Material.background: Material.Blue

    ColumnLayout {
        anchors.fill: parent
        spacing: 35

        //----------------THE NAVIGATION AND FILTER PANE--------------------------------------
        RowLayout {
            Layout.preferredWidth: parent.width

            Label {
                Layout.alignment: Qt.AlignLeft
                Layout.preferredWidth: 30
                text: "Default"
                font.pixelSize: 20
                font.bold: true
                color: "white"
            }

            RoundPane {
                radius: 5
                Material.background: "white"
                Material.elevation: 1
                Layout.alignment: Qt.AlignLeft
                Row {
                    spacing: 5
                    Label {
                        text: "\uf015"
                        font.pixelSize: 20
                    }
                    Label {
                        text: "\/"
                        font.pixelSize: 20
                    }

                    Label {
                        text: "Dashboard"
                        font.pixelSize: 20
                    }
                }


            }

            Row {
                spacing: 4
                Layout.alignment: Qt.AlignRight
                RoundPane {
                    radius: 3
                    Material.elevation: 1
                    Material.background: "white"
                    Label {
                        anchors.centerIn: parent
                        text: "New"
                    }

                }
                RoundPane {
                    radius: 3
                    Material.elevation: 1
                    Material.background: "white"
                    Label {
                        text: "Filters"
                    }
                }
            }
        }
        //----------------END OF THE NAVIGATION AND FILTER PANE--------------------------------------

        //----------------THE OVERVIEW PANE--------------------------------------

        RowLayout {
            Layout.preferredWidth: parent.width
            Layout.fillWidth: true
            spacing: 5
            DataPane {
                descText: "TOTAL TRAFFIC"
                countText: "350,897"
                iconText: "\uf0a6"
            }
            DataPane {
                descText: "NEW USERS"
                countText: "2,356"
                iconText: "\uf200"
            }
            DataPane {
                descText: "SALES"
                countText: "924"
                iconText: "\uf1c0"
            }
            DataPane {
                descText: "PERFORMANCE"
                countText: "49,65%"
                iconText: "\uf012"
            }
        }
        //----------------THE OVERVIEW PANE--------------------------------------

        //----------------THE GRAPHS PANE--------------------------------------

        RowLayout {
            Layout.preferredWidth: parent.implicitWidth

            // graphs here
            SalesChart {}
            OrdersGraph {}
        }
        //----------------END OF THE GRAPHS PANE--------------------------------------

    }

}
