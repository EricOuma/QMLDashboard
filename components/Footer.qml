import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Item {
    RowLayout {
        anchors.fill: parent
        Row {
            spacing: 5
            Label {
                text:"\uf1f9"
                font.family: fontawesomeRegular.name
            }
            Label {
                text: "2020"
            }
            Label {
                text: "Creative Tim"
            }
        }
        Row {
            spacing: 15
            Layout.alignment: Qt.AlignRight
            Label {
                text: "Creative Tim"
            }
            Label {
                text: "About Us"
            }
            Label {
                text: "Blog"
            }
            Label {
                text: "MIT License"
            }
        }
    }
}
