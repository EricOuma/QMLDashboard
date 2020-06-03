import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtCharts 2.12

RoundPane {
    Material.elevation: 1
    Material.background: "white"
    Layout.preferredHeight: 500
    Layout.preferredWidth: 400
    ColumnLayout {
        anchors.fill: parent
        Column {
            spacing: 10
            Label {
                text: "PERFORMANCE"
                color: "grey"
                font.pixelSize: 12
            }
            Label {
                text: "Total orders"
                font.bold: true
                font.pixelSize: 20
            }
        }

        ChartView {
            Layout.fillWidth: true
            Layout.fillHeight: true
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
