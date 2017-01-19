import QtQuick 2.7
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0

ApplicationWindow {
    visible: true
    width: 600
    height: 480
    title: qsTr("Glowing Rect")

    id: timer
    property bool changeColor: false

    background: Rectangle {
        anchors.fill: parent
        color: "#000000"
    }

    RectangularGlow {
        id: effect
        smooth: true
        anchors.fill: circleHolder
        glowRadius: 10
        spread: 0.9
        color: "#5555ff"
        cornerRadius: circleHolder.radius + glowRadius

        SequentialAnimation {
            id: anim
            running: true
            loops: Animation.Infinite

            PropertyAnimation {
                targets: [ effect, glows]
                property: "color"
                to: "#55ff55"
                duration: 500

            }
            PropertyAnimation {
                targets: [ effect, glows]
                property: "color"
                to: "#5555ff"
                duration: 500
            }

            PropertyAnimation {
                targets: [ effect, glows]
                property: "color"
                to: "#ff5555"
                duration: 500
            }
            PropertyAnimation {
                targets: [ effect, glows]
                property: "color"
                to: "#55ffff"
                duration: 500
            }
            PropertyAnimation {
                targets: [ effect, glows]
                property: "color"
                to: "#ff55ff"
                duration: 500
            }
            PropertyAnimation {
                targets: [ effect, glows]
                property: "color"
                to: "#ffff55"
                duration: 500
            }
        }
    }

    Rectangle {
        id: circleHolder
        color: "black"
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        width: Math.min(parent.width, parent.height) - 100
        height: width
        radius: width/2

        Text {
            id: glows
            text: "Glowing Rect"
            anchors.centerIn: parent
            color: "#ffffff"
            font.family: "consolas"
            font.pointSize: 32
        }
    }
}
