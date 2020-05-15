import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: statusCom
    height: 40

    Rectangle {
        anchors.fill: parent
        color: "#2F2F2F"

        Image {
            id: img
            source: "qrc:/images/live tool_icon_announcement.png"

            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: ad
            text: "探球公告轮播，每5秒往上滚动切换一条"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#DCDCDC"

            anchors.left: img.right
            anchors.leftMargin: 11
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: status
            text: "未开播"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#777777"

            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: memory
            text: "内存：38%"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#777777"

            anchors.right: status.left
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: cpu
            text: "CPU：16%"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#777777"

            anchors.right: memory.left
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: frameLoss
            text: "丢帧：0(0:00%)"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#777777"

            anchors.right: cpu.left
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: fps
            text: "FPS：31"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#777777"

            anchors.right: frameLoss.left
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: codeRate
            text: "码率：0kb/s"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#777777"

            anchors.right: fps.left
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
