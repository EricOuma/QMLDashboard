import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtCharts 2.12

RoundPane {
    Material.elevation: 1
    Material.background: "white"

    ColumnLayout {
        anchors.fill: parent
        RowLayout {
            Layout.preferredWidth: parent.width

            Label {
                text: "Edit profile"
            }
             RoundPane {
                 Layout.alignment: Qt.AlignRight
                 Material.elevation: 1
                 Material.background: "blue"
                  Label {
                      text: "Settings"
                  }
             }
        }
    }

}
