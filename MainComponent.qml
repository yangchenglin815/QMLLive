import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import OpenGLCube 1.0
import QtAV 1.7

Item {
    id: mainCom
    Rectangle {
        anchors.fill: parent
        color: "#262626"

        Image {
            id: headPic
            width: 48; height: 48
            source: "qrc:/images/lb_wechat_login.png"
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 11
        }

        Text {
            id: roomName
            text: "主播名称的直播间"
            font.family: "微软雅黑"
            font.pixelSize: 14
            color: "#DCDCDC"
            anchors.left: headPic.right
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 10
        }

        Rectangle {
            id: roomNameInput
            width: 130
            height: 28
            visible: false

            anchors.left: roomName.right
            anchors.leftMargin: 10
            anchors.verticalCenter: roomName.verticalCenter

            border.width: 1
            border.color: "#3F3F3F"
            color: "#262626"
            radius: 1

            TextInput {
                anchors.fill: parent
                anchors.margins: 2
                anchors.leftMargin: 6
                focus: true
                font.family: "微软雅黑"
                font.pixelSize: 14
                clip: true
                color: "#DCDCDC"
            }

        }

        Button {
            id: alterBtn
            width: 44
            height: 20
            anchors.left: roomName.right
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 10
            Text {
                anchors.centerIn: parent
                text: "修改"
                font.family: "微软雅黑"
                font.pixelSize: 12
                color: "#DCDCDC"
            }
            style: ButtonStyle {
                background: Rectangle{
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "#2F2F2F"
                    radius: 10
                }
            }
        }

        Text {
            id: userName
            text: "我是昵称"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#999999"
            anchors.left: headPic.right
            anchors.leftMargin: 20
            anchors.top: roomName.bottom
            anchors.topMargin: 10
        }

        Text {
            id: userNo
            text: "探球号：123456789"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#999999"
            anchors.left: userName.right
            anchors.leftMargin: 20
            anchors.top: roomName.bottom
            anchors.topMargin: 10
        }

        Text {
            id: roomNo
            text: "房间号：123456789"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#999999"
            anchors.left: userNo.right
            anchors.leftMargin: 20
            anchors.top: roomName.bottom
            anchors.topMargin: 10
        }

        Image {
            id: groupPic
            source: "qrc:/images/lb_group_chat.png"
            anchors.left: roomNo.right
            anchors.leftMargin: 30
            anchors.verticalCenter: roomNo.verticalCenter
        }

        Text {
            id: groupNum
            text: "聊足球(567)人"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#999999"
            anchors.left: groupPic.right
            anchors.leftMargin: 4
            anchors.verticalCenter: roomNo.verticalCenter
        }

        Image {
            id: hotPic
            source: "qrc:/images/lb_hot.png"
            anchors.left: groupNum.right
            anchors.leftMargin: 30
            anchors.verticalCenter: roomNo.verticalCenter
        }

        Text {
            id: hotNum
            text: "1234567"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#999999"
            anchors.left: hotPic.right
            anchors.leftMargin: 4
            anchors.verticalCenter: roomNo.verticalCenter
        }

        PlayerComponent {
            id: screen

            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.top: headPic.bottom
            anchors.topMargin: 11
            height: 450
        }

        ControlComponent {
            id: control
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.top: screen.bottom
        }
    }
}
