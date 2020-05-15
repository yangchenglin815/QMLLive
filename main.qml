import QtQuick 2.6
import QtQuick.Window 2.2
//import QtAV 1.7

Window {
    id: root
    visible: true
    width: 1060
    height: 690
    title: qsTr("QML LIVE")

//    Item {
//        anchors.fill: parent
//        Video {
//            id: video
//            source: "F://5-2.mp4"
//            width: parent.width
//            height: parent.height
//        }
//        MouseArea {
//            anchors.fill: parent
//            onClicked: video.play()
//        }

//        focus: true
//        Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
//        Keys.onLeftPressed: video.seek(video.position - 5000)
//        Keys.onRightPressed: video.seek(video.position + 5000)
//    }

    TitleComponent {
        id: title
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
    }

    StatusComponent {
        id: status
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }

    OperatorComponent {
        id: operator
        anchors.left: parent.left
        anchors.top: title.bottom
        anchors.bottom: status.top
    }

    MainComponent {
        id: main
        anchors.right: parent.right
        anchors.top: title.bottom
        anchors.bottom: status.top
        anchors.left: operator.right
    }

    AddSourceDialog {
        id: dlg

    }
}
