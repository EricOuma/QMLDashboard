import QtQuick 2.12
import QtGraphicalEffects 1.12

Image {
    id: img
    property bool rounded: true
    property bool adapt: true
    property alias imgSource: img.source

    fillMode: Image.PreserveAspectFit

    layer.enabled: rounded
    layer.effect: OpacityMask {
        maskSource: Item {
            width: img.width
            height: img.height
            Rectangle {
                anchors.centerIn: parent
                width: img.adapt ? img.width : Math.min(img.width, img.height)
                height: img.adapt ? img.height : width
                radius: Math.min(width, height)
            }
        }
    }
}
