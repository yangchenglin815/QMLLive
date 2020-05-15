import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtAV 1.7
//F:/QMLLive/test.mp4
Item {
    id: player
    Rectangle {
        anchors.fill: parent
        color: "#121212"
        Video {
            width: parent.width
            height: parent.height
            id: video
            source: "F:/5-2.mp4"
        }
        MouseArea {
            anchors.fill: parent;
            onClicked: video.play()
        }
        focus: true
        Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
        Keys.onLeftPressed: video.seek(video.position - 5000)
        Keys.onRightPressed: video.seek(video.position + 5000)
    }
}
