import QtQuick 2.12
import QtQuick.Window 2.12

//1
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

        ParallelAnimation {
            running: true
            NumberAnimation { target: rect; property: "x"; to: 50; duration: 1000 }
            NumberAnimation { target: rect; property: "y"; to: 50; duration: 1000 }
        }
    }
}
*/

/*
//2
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ParallelAnimation {
        running: true
        NumberAnimation { target: rect_red; property: "x"; to: 50; duration: 1000 }
        NumberAnimation { target: rect_red; property: "y"; to: 50; duration: 1000 }
    }

    Rectangle {
        id: rect_red
        width: 100; height: 100
        color: "red"
    }

    Rectangle {
        id: rect_green
        width: 100; height: 100
        color: "green"
        y: parent.y + 200
    }
}
*/



//3
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ParallelAnimation {
        running: true
        NumberAnimation { target: rect_red; property: "x"; to: 50; duration: 1000 }
        NumberAnimation { target: rect_red; property: "y"; to: 50; duration: 1000 }

        NumberAnimation { target: rect_green; property: "x"; to: 300; duration: 1000 }
    }

    Rectangle {
        id: rect_red
        width: 100; height: 100
        color: "red"
    }

    Rectangle {
        id: rect_green
        width: 100; height: 100
        color: "green"
        y: parent.y + 200
    }
}


/*
//4
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    SequentialAnimation{
        id: sa
        running: true
        ParallelAnimation {
//            running: true
            NumberAnimation { target: rect_red; property: "x"; to: 50; duration: 1000 }
            NumberAnimation { target: rect_red; property: "y"; to: 50; duration: 1000 }

            NumberAnimation { target: rect_green; property: "x"; to: 300; duration: 1000 }
        }

        NumberAnimation {target: rect_light_blue; property: "x"; to: 300; duration: 1000}
    }



    Rectangle {
        id: rect_red
        width: 100; height: 100
        color: "red"
    }

    Rectangle {
        id: rect_green
        width: 100; height: 100
        color: "green"
        y: parent.y + 200
    }

    Rectangle {
        id: rect_light_blue
        width: 100; height: 100
        color: "lightblue"
        y: parent.y + 350
    }
}
*/
