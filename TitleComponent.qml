import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: titleCom
    height: 50

    Rectangle {
        anchors.fill: parent
        color: "#2F2F2F"

        Image {
            id: logo
            source: "qrc:/images/logo.png"

            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: name
            text: qsTr("直播助手")
            font.family: "微软雅黑"
            font.pixelSize: 18
            color: "#EEEEEE"

            anchors.left: logo.right
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
        }

        Button {
            property string normalPic: "qrc:/images/pb_live_content_normal.png"
            property string hoverPic: "qrc:/images/pb_live_content_over.png"

            id: classifySelectedBtn
            width: 202
            height: 20

            anchors.left: name.right
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter

            Text {
                text: qsTr("足球-英超 主队名称VS客队名称")
                font.family: "微软雅黑"
                font.pixelSize: 12
                color: classifySelectedBtn.hovered ? "#FFFFFF" : "#EEEEEE"

                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 26
            }

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"

                    BorderImage {
                        source: control.hovered ? classifySelectedBtn.hoverPic : classifySelectedBtn.normalPic
                    }
                }
            }
        }

        Button {
            property string normalPic: "qrc:/images/pb_close_normal.png"
            property string hoverPic: "qrc:/images/pb_close_pressed.png"

            id: closeBtn
            width: 11
            height: 12

            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"

                    BorderImage {
                        source: control.hovered ? closeBtn.hoverPic : closeBtn.normalPic
                    }
                }
            }
        }

        Button {
            property string normalPic: "qrc:/images/maximum_normal.png"
            property string hoverPic: "qrc:/images/maximum_pressed.png"

            id: maxBtn
            width: 12
            height: 12

            anchors.right: closeBtn.left
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"

                    BorderImage {
                        source: control.hovered ? maxBtn.hoverPic : maxBtn.normalPic
                    }
                }
            }
        }

        Button {
            property string normalPic: "qrc:/images/minimum_normal.png"
            property string hoverPic: "qrc:/images/minimum_pressed.png"

            id: minBtn
            width: 12
            height: 12

            anchors.right: maxBtn.left
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"

                    BorderImage {
                        source: control.hovered ? minBtn.hoverPic : minBtn.normalPic
                    }
                }
            }
        }

        Button {
            property string normalPic: "qrc:/images/settings_menu_normal.png"
            property string hoverPic: "qrc:/images/settings_menu_pressed.png"

            id: setBtn
            width: 12
            height: 12

            anchors.right: minBtn.left
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"

                    BorderImage {
                        source: control.hovered ? setBtn.hoverPic : setBtn.normalPic
                    }
                }
            }
        }
    }
}
