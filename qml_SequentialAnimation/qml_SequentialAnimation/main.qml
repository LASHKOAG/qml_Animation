import QtQuick 2.12
import QtQuick.Window 2.12

//1 анимация начнется сразу, хоть будучи SequentialAnimation внутри прямоугольника или снаружи
/*
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"

        SequentialAnimation {
            running: true
            NumberAnimation { target: rect; property: "x"; to: 50; duration: 1000 }
            NumberAnimation { target: rect; property: "y"; to: 50; duration: 1000 }
        }
    }
}
*/

/*
//2 анимация начнется сразу
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    SequentialAnimation {
        id: sa_red
        running: true
        NumberAnimation { target: rect; property: "x"; to: 50; duration: 1000 }
        NumberAnimation { target: rect; property: "y"; to: 50; duration: 1000 }
    }

    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
    }
}
*/



//3 анимация начнется только после клика мыши на прямоугольник
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    SequentialAnimation {
        id: sa_red
        running: false
        NumberAnimation { target: rect; property: "x"; to: 50; duration: 1000 }
        NumberAnimation { target: rect; property: "y"; to: 50; duration: 1000 }
        PropertyAnimation {target: rect; property: "opacity"; to: 0.5; duration: 1000}
        PropertyAnimation {target: rect; property: "color"; to: "darkgreen"; duration: 1000}
        PropertyAnimation {target: rect; property: "opacity"; to: 1; duration: 1000}
    }

    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"

        MouseArea{
            id: ma
            anchors.fill: parent
            onClicked: sa_red.running = true
        }
    }
}

