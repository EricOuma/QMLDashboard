import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../components"

RoundPane {
    anchors.centerIn: parent
    radius: 5
    Material.background: "white"
    Material.elevation: 1
    width: 450

    ColumnLayout {
        spacing: 15
        anchors.fill: parent
        Label {
            Layout.fillWidth: true
            text: "Sign in with"
            Layout.alignment: Qt.AlignHCenter
        }
        RowLayout {
            Layout.preferredWidth: parent.width
            Layout.fillWidth: true
            spacing: 10
            RoundPane {
                id: github
                radius: 5
                Material.background: "white"
                Material.elevation: 1
                Row {
                    spacing: 10
                    Image {
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/assets/images/github.svg"
                        sourceSize: "20x20"
                    }
                    Label {
                        text: "Github"
                        color: "#5e72e4"
                    }
                }
            }
            RoundPane {
                id: google
                radius: 5
                Material.background: "white"
                Material.elevation: 1
                Row {
                    spacing: 10
                    Image {
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/assets/images/google.svg"
                        sourceSize: "20x20"
                    }
                    Label {
                        text: "Google"
                        color: "#5e72e4"
                    }
                }
            }
        }
        Label {
            Layout.fillWidth: true
            text: "Or sign in with credentials"
            Layout.alignment: Qt.AlignHCenter
        }
        ColumnLayout {
            Layout.fillWidth: true
            Layout.preferredWidth: parent.width
            id: form
            spacing: 10
            FormTextField {
                rectWidth: parent.width
                id: email
                placeholder: "Email"
            }
            FormTextField {
                rectWidth: parent.width
                id: password
                placeholder: "Password"
            }
            CustomCheckBox{}
            RoundPane {
//                Layout.preferredWidth: signText.width + 30
//                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter
                radius: 5
                Material.background: "#5e72e4"
                Material.elevation: 1
                Label {
                    id: signText
                    anchors.centerIn: parent
                    text: "Sign in"
                    font.pixelSize: 14
                    font.letterSpacing: 0.4
                }
            }
        }
    }
}
