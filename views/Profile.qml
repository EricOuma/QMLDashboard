import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.12

import "../components"

Item {
    ScrollView {
        clip: true
        id: scroll
        anchors.fill: parent
        ColumnLayout {
            height: scroll.height
            width: scroll.width
            Image {
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: Math.max(500, parent.height)
                source: "qrc:/assets/images/profile-cover.jpg"
                fillMode: Image.PreserveAspectCrop

                LinearGradient {
                    anchors.fill: parent
                    opacity: 0.9
                    start: Qt.point(300, 0)
                    end: Qt.point(0, 0)
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#172b4d" }
                        GradientStop { position: 1.0; color: "#1a174d" }
                    }
                }

                Pane {
                    anchors.fill: parent
                    Material.background: "transparent"
                    ColumnLayout {
                        anchors {
                            verticalCenter: parent.verticalCenter
                            leftMargin: 30
                        }
                        height: parent.implicitHeight/2
                        width: parent.implicitWidth
                        spacing: 5
                        Label {
                            text: "Hello Jesse"
                            color: "white"
                            font.bold: true
                            font.pixelSize: 40
                            font.family: "Open Sans, sans-serif"
                        }

                        Text {
                            color: "white"
                            font.pixelSize: 15
                            //                    elide: Text.ElideRight
                            wrapMode: Text.WordWrap
                            Layout.preferredWidth: parent.width/2 > 300 ? parent.width/2 : parent.width
                            text: qsTr("This is your profile page. You can see the progress you've made with your work and manage your projects or assigned tasks")
                        }

                        RoundPane {
                            radius: 5
                            Material.background: "white"
                            Material.elevation: 1

                            Label {
                                text: "Edit profile"
                                color: "blue"
                            }
                        }
                    }
                }

            }

            Flow {
                Layout.preferredWidth: parent.width
                property int childrenWidth: profileForm.width + profileCard.width
                spacing: Math.max(10, (parent.implicitWidth - childrenWidth))
                // graphs here
                EditProfileForm {
                    id: profileForm
                    width: parent.width >= 600? Math.max(533,((parent.width*2/3)-100)) : parent.implicitWidth
                }
                ProfileCard {
                    id: profileCard
                    width: parent.width >= 600? Math.max(266,((parent.width/3)+50)) : parent.implicitWidth
                }
            }
        }
    }
}



