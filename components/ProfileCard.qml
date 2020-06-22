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
        implicitHeight: profilePic.implicitHeight + rowButtons.implicitHeight + 30
        Image {
            id: profilePic
            Layout.preferredWidth: parent.width
            fillMode: Image.PreserveAspectFit
            source: "qrc:/assets/images/profile-card.jpg"
        }
         RowLayout {
             id: rowButtons
             spacing: 10
             Layout.preferredWidth: parent.width
             RoundPane {
                 Layout.alignment: Qt.AlignBottom
                 Material.elevation: 1
                 Material.background: "blue"

                 Label {
                     text: "Connect"
                     color: "white"
                 }
             }
             RoundImage {
                 Layout.preferredHeight: 140
                 Layout.preferredWidth: 140
                 imgSource: "qrc:/assets/images/profile.jpg"
             }

             RoundPane {
                 Layout.alignment: Qt.AlignBottom
                 Material.elevation: 1
                 Material.background: "purple"

                 Label {
                     text: "Message"
                     color: "white"
                 }
             }
         }
    }
}
