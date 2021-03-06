import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls 1.4 as ControlsOne
import QtQuick.Controls.Material 2.12
import QtCharts 2.12

import "./components"
import "./views"

Window {
    id: top
    visible: true
    width: 1280
    height: 720
    title: qsTr("Argon")
    // FONT MANENOS
    FontLoader { id: fontawesomeBrands; source: "qrc:/assets/fonts/brands.otf" }
    FontLoader { id: fontawesomeRegular; source: "qrc:/assets/fonts/regular.otf" }
    FontLoader { id: fontawesomeSolid; source: "qrc:/assets/fonts/solid.otf" }

    property alias fontawesomeBrands: fontawesomeBrands
    property alias fontawesomeeRegular: fontawesomeRegular
    property alias fontawesomeSolid: fontawesomeSolid
    // END OF FONT MANENOS

    property alias stackId: stack
    property int tabIndex: 1

    RowLayout {
        spacing: 0
        anchors.fill: parent
        //----------------THE SIDE BAR--------------------------------------
        Pane {
            id: sidebar
            Layout.fillHeight: true
            Layout.preferredWidth: 200

            ColumnLayout{

                spacing: 2
                anchors.fill: parent

                Pane {
                    Layout.preferredHeight: 100
                    Layout.fillWidth: true

                    Image {
                        height: 70;width: parent.width
                        fillMode: Image.PreserveAspectFit
                        source: "qrc:/assets/images/logo.png"
                    }
                }

                Pane {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Tabs{
                        id: tabs
                        anchors {
                            left: parent.left
                            right: parent.right
                        }
                    }
                }

            }
        }
        //----------------END OF THE THE SIDE BAR--------------------------------------

        //----------------THE THE MAIN BAR--------------------------------------
        Pane {
            id: mainbar
            Layout.margins: 0
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                spacing: 1
                anchors.fill: parent
                //----------------THE TOP BAR--------------------------------------
                Pane {
                    Layout.preferredHeight: 80
                    Layout.fillWidth: true
                    Material.background: Material.Blue

                    TopBar {
                        anchors {
                            top: parent.top
                            left: parent.left
                            right: parent.right
                        }
                    }
                }
                //----------------END OF THE TOP BAR--------------------------------------

                //=============================THE BEGINNING OF STACKVIEW SECTION=============

                StackView {
                    id: stack
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    initialItem: Qt.resolvedUrl("qrc:/views/Dashboard.qml")

                }
                //====----------------THE END OF STACKVIEW SECTION--------------------------------------
                //=============================THE BEGINNING OF FOOTER SECTION=============
                Footer {
                    id: footer
                    Layout.preferredWidth: parent.width
                    Layout.preferredHeight: 80
                }

                //====----------------THE END OF FOOTER SECTION--------------------------------------

            }
        }
        //---------------=======-END OF THE MAIN BAR--------------------------------------

    }
}
