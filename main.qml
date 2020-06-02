import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtCharts 2.12

import "./components"

Window {
    id: top
    visible: true
    width: 1280
    height: 720
    title: qsTr("Argon")

    FontLoader { id: fontawesomeBrands; source: "qrc:/assets/fonts/brands.otf" }
    FontLoader { id: fontawesomeRegular; source: "qrc:/assets/fonts/regular.otf" }
    FontLoader { id: fontawesomeSolid; source: "qrc:/assets/fonts/solid.otf" }

    property alias fontawesomeBrands: fontawesomeBrands
    property alias fontawesomeeRegular: fontawesomeRegular
    property alias fontawesomeSolid: fontawesomeSolid

    RowLayout {
        spacing: 1
        anchors.fill: parent

        Pane {
            id: sidebar
            Layout.fillHeight: true
            Layout.preferredWidth: 200
            ColumnLayout{

                spacing: 2
                anchors.fill: parent

                Pane {
                    Layout.preferredHeight: 100
                    Layout.fillWidth: true

                    Image {
                        height: 70;width: parent.width
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/assets/images/logo.png"
                    }
                }

                Pane {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Tabs{

                    }
                }

            }
        }

        Pane {
            id: mainbar
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                anchors.fill: parent

                Pane {
                    Layout.preferredHeight: 100
                    Layout.fillWidth: true
                    Material.background: Material.Blue

                    TopBar{
                        anchors.fill: parent
                    }
                }

                Pane {
                    Layout.preferredHeight: 350
                    Layout.fillWidth: true
                    Material.background: Material.Blue

                    ColumnLayout {
                        anchors.fill: parent
//                        spacing: 2
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

                        RowLayout {
                            RoundPane {
                                ChartView {
                                    title: "Line"
                                    anchors.fill: parent
                                    antialiasing: true

                                    LineSeries {
                                        name: "LineSeries"
                                        XYPoint { x: 0; y: 0 }
                                        XYPoint { x: 1.1; y: 2.1 }
                                        XYPoint { x: 1.9; y: 3.3 }
                                        XYPoint { x: 2.1; y: 2.1 }
                                        XYPoint { x: 2.9; y: 4.9 }
                                        XYPoint { x: 3.4; y: 3.0 }
                                        XYPoint { x: 4.1; y: 3.3 }
                                    }
                                }
                            }

                            RoundPane {
                                ChartView {
                                    title: "Bar series"
                                    anchors.fill: parent
                                    legend.alignment: Qt.AlignBottom
                                    antialiasing: true

                                    BarSeries {
                                        id: mySeries
                                        axisX: BarCategoryAxis { categories: ["2007", "2008", "2009", "2010", "2011", "2012" ] }
                                        BarSet { label: "Bob"; values: [2, 2, 3, 4, 5, 6] }
                                        BarSet { label: "Susan"; values: [5, 1, 2, 4, 1, 7] }
                                        BarSet { label: "James"; values: [3, 5, 8, 13, 5, 8] }
                                    }
                                }
                            }
                        }

                    }


                }

            }
        }

    }

}
