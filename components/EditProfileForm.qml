import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12


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
            Layout.fillWidth: true
            spacing: 20

            Label {
                text: "USER INFORMATION"
            }
            Flow {
                spacing: 30
                Layout.preferredWidth: parent.width
                Layout.fillWidth: true
                Column {
                    width: parent.width/2 - 15
                    spacing: 7
                    Label {
                        text: "Username"
                    }
                    FormTextField {
                        rectWidth: parent.width
                        id: username
                        placeholder: "eric.ouma"
                        Component.onCompleted: console.log(rectWidth)
                    }
                }
                Column {
                    width: parent.width/2 - 15
                    spacing: 7
                    Label {
                        text: "Email address"
                    }
                    FormTextField {
                        rectWidth: parent.width
                        id: email
                        placeholder: "test@gmail.com"
                    }
                }
            }
            Flow {
                spacing: 30
                Layout.preferredWidth: parent.width
                Layout.fillWidth: true
                Column {
                    width: parent.width/2 - 15
                    spacing: 7
                    Label {
                        text: "First name"
                    }
                    FormTextField {
                        rectWidth: parent.width
                        id: firstname
                        placeholder: "James"
                    }
                }
                Column {
                    width: parent.width/2 - 15
                    spacing: 7
                    Label {
                        text: "Last name"
                    }
                    FormTextField {
                        rectWidth: parent.width
                        id: lastname
                        placeholder: "Bond"
                    }
                }
            }
            Label {
                text: "CONTACT INFORMATION"
            }
            Column {
                Layout.preferredWidth: parent.width
                Layout.fillWidth: true
                spacing: 7
                Label {
                    text: "Address"
                }
                FormTextField {
                    id: address
                    rectWidth: parent.width
                    placeholder: "Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09"
                }
            }
            Flow {
                spacing: 20
                Layout.preferredWidth: parent.width
                Layout.fillWidth: true
                Column {
                    width: parent.width/3 - 14
                    spacing: 7
                    Label {
                        text: "City"
                    }
                    FormTextField {
                        rectWidth: parent.width
                        id: city
                        placeholder: "New York"
                    }
                }
                Column {
                    width: parent.width/3 - 14
                    spacing: 7
                    Label {
                        text: "Country"
                    }
                    FormTextField {
                        rectWidth: parent.width
                        id: country
                        placeholder: "United States"
                    }
                }
                Column {
                    width: parent.width/3 - 14
                    spacing: 7
                    Label {
                        text: "Postal code"
                    }
                    FormTextField {
                        rectWidth: parent.width
                        id: postalCode
                        placeholder: "Postal code"
                    }
                }
            }
            Label {
                text: "ABOUT ME"
            }
            ColumnLayout {
                Layout.preferredWidth: parent.width
                Layout.fillWidth: true
                spacing: 7
                Label {
                    text: "About me"
                }
                ScrollView {
                    Layout.fillWidth: parent
                    TextArea {
                        id: aboutMe
                        placeholderText: qsTr("A beautiful Dashboard for QT QML. It is Free and Open Source.")

                        background: Rectangle {
                            implicitWidth: parent.parent.width
                            implicitHeight: 140
                            color: "transparent"
                            radius: 5
                            border.color: aboutMe.enabled ? "#5e72e4" : "gray"
                        }
                    }
                }


            }
        }
    }

}
