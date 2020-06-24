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
                 padding: 5
                 Layout.alignment: Qt.AlignRight
                 Material.elevation: 1
                 Material.background: "#5e72e4"
                  Label {
                      text: "Settings"
                  }
             }
        }

        ColumnLayout {
            Layout.preferredWidth: parent.width

            Label {
                text: "USER INFORMATION"
//                Layout.alignment: Qt.AlignLeft
            }
            Flow {
                Layout.preferredWidth: parent.width
                Layout.fillWidth: true
                Column {
                    Layout.preferredWidth: parent.width > 500? parent.width/2 : parent.width
                    Label {
                        text: "Username"
                    }
                    FormTextField {
                        id: control
                        placeholder: "eric.ouma"
                    }
                }
                Column {
                    Layout.preferredWidth: parent.width > 500? parent.width/2 : parent.width
                    Label {
                        text: "Email address"
                    }
                    FormTextField {
                        id: email
                        placeholder: "test@gmail.com"
                    }
                }
                Column {
                    Layout.preferredWidth: parent.width > 500? parent.width/2 : parent.width
                    Label {
                        text: "First name"
                    }
                    FormTextField {
                        id: firstname
                        placeholder: "James"
                    }
                }
                Column {
                    Layout.preferredWidth: parent.width > 500? parent.width/2 : parent.width
                    Label {
                        text: "Last name"
                    }
                    FormTextField {
                        id: lastname
                        placeholder: "Bond"
                    }
                }
            }
        }
    }

}
