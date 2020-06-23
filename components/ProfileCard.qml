import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtCharts 2.12

RoundPane {
    Material.elevation: 1
    Material.background: "white"
    height: profilePic.implicitHeight + rowButtons.implicitHeight + rowTwo.implicitHeight + rowThree.implicitHeight + 80

    ColumnLayout {
        id: column
        anchors.fill: parent
        Image {
            id: profilePic
            sourceSize.width: parent.width
            fillMode: Image.PreserveAspectFit
            source: "qrc:/assets/images/profile-card.jpg"
        }
         RowLayout {
             id: rowButtons
             Layout.topMargin: -(userPhoto.height/2+60)
             Layout.preferredWidth: parent.width
             Layout.fillWidth: true
             Layout.preferredHeight: userPhoto.height
             Layout.alignment: Qt.AlignHCenter
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
                 id: userPhoto
                 sourceSize.width: 140
                 sourceSize.height: 140
                 imgSource: "qrc:/assets/images/profile.jpg"
                 borderColor: "white"
                 borderSize: 4
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

         RowLayout {
             id: rowTwo
             Layout.topMargin: 30
             Layout.preferredWidth: parent.width
             Layout.alignment: Qt.AlignHCenter
             Layout.fillWidth: true
             Column {
                 Label {
                     text: "22"
                     font.bold: true
                     anchors.horizontalCenter: parent.horizontalCenter
                 }
                 Label {
                     text: "Friends"
                     anchors.horizontalCenter: parent.horizontalCenter
                 }
             }
             Column {
                 Label {
                     text: "10"
                     font.bold: true
                     anchors.horizontalCenter: parent.horizontalCenter
                 }
                 Label {
                     text: "Photos"
                     anchors.horizontalCenter: parent.horizontalCenter
                 }
             }
             Column {
                 Label {
                     text: "89"
                     font.bold: true
                     anchors.horizontalCenter: parent.horizontalCenter
                 }
                 Label {
                     text: "Comments"
                     anchors.horizontalCenter: parent.horizontalCenter
                 }
             }
         }
         RowLayout {
             id: rowThree
             Layout.preferredWidth: parent.width
             Layout.alignment: Qt.AlignHCenter
             Layout.fillWidth: true
             Column {
                 spacing: 15
                 Label {
                     text: "Jessica Jones, 27"
                     font.bold: true
                     anchors.horizontalCenter: parent.horizontalCenter
                 }
                 Label {
                     text: "Bucharest, Romania"
                     anchors.horizontalCenter: parent.horizontalCenter
                 }
                 Label {
                     text: "Solution Manager - Creative Tim Officer"
                     font.bold: true
                     anchors.horizontalCenter: parent.horizontalCenter
                 }
                 Label {
                     text: "University of Computer Science"
                     anchors.horizontalCenter: parent.horizontalCenter
                 }
             }
         }
    }
}
