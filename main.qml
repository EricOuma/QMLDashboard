import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "./components"

Window {
    id: top
    visible: true
    width: 1280
    height: 720
    title: qsTr("Argon")

    FontLoader { id: fontawesomeBrands; source: "qrc:/assets/fonts/brands.otf" }
    FontLoader { id: fontawesomeRegular; source: "qrc:/assets/fonts/regular.otf" }
    FontLoader { id: fontawesomeSolid; source: "qrc:/assets/fonts/solid.otf" }

    property alias fontawesomeBrands: fontawesomeBrands
    property alias fontawesomeeRegular: fontawesomeRegular
    property alias fontawesomeSolid: fontawesomeSolid

    RowLayout {
        spacing: 1

        Pane {
            id: sidebar
            Layout.fillHeight: true
            Layout.preferredWidth: 200
            ColumnLayout{

                spacing: 2

                Pane {
                    Layout.preferredHeight: 100
                    Layout.preferredWidth: sidebar.width
                    Image {
                        width: parent.width
                        height: parent.height
                        anchors.centerIn: parent
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/assets/images/logo.png"
                    }
                }

                Tabs{}

            }
        }

        Pane {
            id: mainbar
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: parent.width - sidebar.width
            ColumnLayout {

                width: parent.width

                TopBar{
                    Layout.fillWidth: true
                    Layout.preferredHeight: 100
                    Material.background: Material.Cyan
                }

                Rectangle {
                    Material.background: Material.Cyan
                }
            }
        }

    }

}
