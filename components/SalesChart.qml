import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtCharts 2.12

RoundPane {
    Material.elevation: 1
    Material.background: "purple"
    height: 500

    ColumnLayout {
        anchors.fill: parent
        RowLayout {
//            Layout.fillWidth: true
            Layout.preferredWidth: parent.width
            Column {
                spacing: 10
                Label {
                    text: "OVERVIEW"
                    color: "white"
                    font.pixelSize: 12
                }
                Label {
                    text: "Sales value"
                    font.bold: true
                    color: "white"
                    font.pixelSize: 20
                }
            }

            Row {
                spacing: 20
                Layout.alignment: Qt.AlignRight
                RoundPane {
                    Material.elevation: 1
                    Material.background: "blue"
                    radius: 3
                    Label {
                        text: "Month"
                        color: "white"
                    }
                }
                RoundPane {
                    Material.elevation: 1
                    Material.background: "white"
                    radius: 3
                    Label {
                        text: "Week"
                        color: "blue"
                    }
                }

            }
        }
        ChartView {
            Layout.fillHeight: true
            Layout.fillWidth: true
            id: sales
            antialiasing: true
            backgroundColor: "purple"

            LineSeries {
                name: "lineseries"
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
}
