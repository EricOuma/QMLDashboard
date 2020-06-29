import QtQuick 2.12
import QtQuick.Controls 2.12

TextField {
    property string placeholder
    property int rectWidth
    id: control

    placeholderText: " "+placeholder

    background: Rectangle {
        implicitWidth: rectWidth
        implicitHeight: 40
        color: "transparent"
        radius: 5
        border.color: control.enabled ? "#5e72e4" : "gray"
    }
}
