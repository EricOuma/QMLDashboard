import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtCharts 2.12

import "../components"

Pane {
//    height: 350

    Material.background: Material.Blue
    ScrollView {
        clip: true
        id: scroll
        anchors.fill: parent

        ColumnLayout {
            id: column
            height: scroll.height
            width: scroll.width
            spacing: 35


            //----------------THE NAVIGATION AND FILTER PANE--------------------------------------


            RowLayout {
                Layout.preferredWidth: parent.width
//                Layout.fillHeight: true
//                Layout.fillWidth: true

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

            Flow {
                Layout.preferredWidth: parent.width
                property int childrenWidth: traffic.implicitWidth + users.implicitWidth + sales.implicitWidth + perf.implicitWidth
                spacing: Math.max(10, ((parent.width - childrenWidth)/3))
                DataPane {
                    id: traffic
                    descText: "TOTAL TRAFFIC"
                    countText: "350,897"
                    iconText: "\uf0a6"
                }
                DataPane {
                    id: users
                    descText: "NEW USERS"
                    countText: "2,356"
                    iconText: "\uf200"
                }
                DataPane {
                    id: sales
                    descText: "SALES"
                    countText: "924"
                    iconText: "\uf1c0"
                }
                DataPane {
                    id: perf
                    descText: "PERFORMANCE"
                    countText: "49,65%"
                    iconText: "\uf012"
                }
            }
            //----------------THE OVERVIEW PANE--------------------------------------

            //----------------THE GRAPHS PANE--------------------------------------

            Flow {
                Layout.preferredWidth: parent.width
                property int childrenWidth: salesChart.width + ordersGraph.width
                spacing: Math.max(10, (parent.implicitWidth - childrenWidth))
                // graphs here
                SalesChart {
                    id: salesChart
                    width: parent.width >= 600? Math.max(533,((parent.width*2/3)-100)) : parent.implicitWidth
                }
                OrdersGraph {
                    id: ordersGraph
                    width: parent.width >= 600? Math.max(266,((parent.width/3)+50)) : parent.implicitWidth
                }
            }
            //----------------END OF THE GRAPHS PANE--------------------------------------
            //----------------THE TABLES PANE--------------------------------------
            Flow {
                Layout.preferredWidth: parent.width
                property int childrenWidth: pagevisits.width + socialtraffic.width
                spacing: Math.max(10, (parent.implicitWidth - childrenWidth))
                PageVisits {
                    id: pagevisits
                    width: parent.width >= 600? Math.max(533,((parent.width*2/3)-100)) : parent.implicitWidth
                }
                SocialTraffic {
                    id: socialtraffic
                    width: parent.width >= 600? Math.max(266,((parent.width/3)+50)) : parent.implicitWidth
                }
            }

            //----------------END OF THE TABLES PANE--------------------------------------

        }

    }
}

