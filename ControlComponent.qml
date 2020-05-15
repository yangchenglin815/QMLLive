import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: controlCom
    Rectangle {
        anchors.fill: parent
        height: 80
        color: "#262626"

        Button {
            id: barrageAssistantBtn
            width: 48
            height: 43

            property string normalPic: "qrc:/images/bullet_screen_normal.png"
            property string hoverPic: "qrc:/images/live tool_icon_barrage_hover.png"

            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.verticalCenter: parent.verticalCenter

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"
                    BorderImage {
                        source: control.hovered ? barrageAssistantBtn.hoverPic : barrageAssistantBtn.normalPic
                    }
                }
            }
        }

        Button {
            id: roomAssistantBtn
            width: 48
            height: 43

            property string normalPic: "qrc:/images/room_management_normal.png"
            property string hoverPic: "qrc:/images/live tool_icon_room management_hover.png"

            anchors.left: barrageAssistantBtn.right
            anchors.leftMargin: 30
            anchors.verticalCenter: parent.verticalCenter

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"
                    BorderImage {
                        source: control.hovered ? roomAssistantBtn.hoverPic : roomAssistantBtn.normalPic
                    }
                }
            }
        }

        Button {
            id: groupSetBtn
            width: 36
            height: 43

            property string normalPic: "qrc:/images/group_settings_normal.png"
            property string hoverPic: "qrc:/images/group_settings_pressed.png"

            anchors.left: roomAssistantBtn.right
            anchors.leftMargin: 30
            anchors.verticalCenter: parent.verticalCenter

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"
                    BorderImage {
                        source: control.hovered ? groupSetBtn.hoverPic : groupSetBtn.normalPic
                    }
                }
            }
        }

        Button {
            id: redPacketBtn
            width: 36
            height: 43

            property string normalPic: "qrc:/images/send_red packet_normal.png"
            property string hoverPic: "qrc:/images/send_red packet_pressed.png"

            anchors.left: groupSetBtn.right
            anchors.leftMargin: 30
            anchors.verticalCenter: parent.verticalCenter

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"
                    BorderImage {
                        source: control.hovered ? redPacketBtn.hoverPic : redPacketBtn.normalPic
                    }
                }
            }
        }

        Button {
            id: soundEffectBtn
            width: 24
            height: 43

            property string normalPic: "qrc:/images/sound_effect_normal.png"
            property string hoverPic: "qrc:/images/sound_effect_pressed.png"

            anchors.left: redPacketBtn.right
            anchors.leftMargin: 30
            anchors.verticalCenter: parent.verticalCenter

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"
                    BorderImage {
                        source: control.hovered ? soundEffectBtn.hoverPic : soundEffectBtn.normalPic
                    }
                }
            }
        }

        Rectangle {
            id: line
            width: 1
            height: 20
            radius: 1
            color: "#585858"

            anchors.left: soundEffectBtn.right
            anchors.leftMargin: 21
            anchors.verticalCenter: parent.verticalCenter
        }

        Button {
            id: micBtn
            width: 13
            height: 12
            checkable: true
            checked: false

            property string normalPic: "qrc:/images/live tool_icon_mike_normal.png"
            property string hoverPic: "qrc:/images/live tool_icon_mike_hover.png"
            property string uncheckedPic: "qrc:/images/live tool_icon_mike_normal.png"
            property string uncheckedHovPic: "qrc:/images/live tool_icon_mike_hover.png"
            property string checkedPic: "qrc:/images/live tool_icon_mike no_normal.png"
            property string checkedHovPic: "qrc:/images/live tool_icon_mike no_hover .png"

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"
                    BorderImage {
                        source: control.hovered ? micBtn.hoverPic : micBtn.normalPic
                    }
                }
            }
            onCheckedChanged: {
                normalPic = checked ? checkedPic : uncheckedPic
                hoverPic = checked ? checkedHovPic : uncheckedHovPic
            }

            anchors.left: line.right
            anchors.leftMargin: 15
            anchors.top: parent.top
            anchors.topMargin: 24
        }

        Button {
            id: jblBtn
            width: 13
            height: 11
            checkable: true
            checked: false

            property string normalPic: "qrc:/images/live tool_icon_the horn_normal.png"
            property string hoverPic: "qrc:/images/live tool_icon_the horn_hover.png"
            property string uncheckedPic: "qrc:/images/live tool_icon_the horn_normal.png"
            property string uncheckedHovPic: "qrc:/images/live tool_icon_the horn_hover.png"
            property string checkedPic: "qrc:/images/live tool_icon_mute_normal.png"
            property string checkedHovPic: "qrc:/images/live tool_icon_mute_hover.png"

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"
                    BorderImage {
                        source: control.hovered ? jblBtn.hoverPic : jblBtn.normalPic
                    }
                }
            }
            onCheckedChanged: {
                normalPic = checked ? checkedPic : uncheckedPic
                hoverPic = checked ? checkedHovPic : uncheckedHovPic
            }

            anchors.left: line.right
            anchors.leftMargin: 15
            anchors.top: micBtn.bottom
            anchors.topMargin: 9
        }

        Slider {
            id: micBar
            width: 80
            height: 3
            stepSize: 1
            minimumValue: 0
            maximumValue: 100
            value: 100

            anchors.left: micBtn.right
            anchors.leftMargin: 10
            anchors.verticalCenter: micBtn.verticalCenter

            style: SliderStyle {
                groove: Rectangle {
                    implicitWidth: 80
                    implicitHeight: 3
                    color: "#585858"
                    radius: 2

                    Rectangle {
                        width: micBar.value / micBar.maximumValue * parent.width
                        height: parent.height
                        radius: parent.radius
                        gradient: Gradient {
                            GradientStop { position: 0.0; color: "#4AB134" }
                            GradientStop { position: 1.0; color: "#73C20E" }
                        }
                    }
                }
                handle: Rectangle {
                    anchors.centerIn: parent
                    color: control.pressed ? "white" : "lightgray"
                    border.color: "gray"
                    border.width: 1
                    implicitWidth: 9
                    implicitHeight: 9
                    radius: 5
                }
            }
        }

        Slider {
            id: jblBar
            width: 80
            height: 3
            stepSize: 1
            minimumValue: 0
            maximumValue: 100
            value: 100

            anchors.left: jblBtn.right
            anchors.leftMargin: 10
            anchors.verticalCenter: jblBtn.verticalCenter

            style: SliderStyle {
                groove: Rectangle {
                    implicitWidth: 80
                    implicitHeight: 3
                    color: "#585858"
                    radius: 2

                    Rectangle {
                        width: jblBar.value / jblBar.maximumValue * parent.width
                        height: parent.height
                        radius: parent.radius
                        gradient: Gradient {
                            GradientStop { position: 0.0; color: "#4AB134" }
                            GradientStop { position: 1.0; color: "#73C20E" }
                        }
                    }
                }
                handle: Rectangle {
                    anchors.centerIn: parent
                    color: control.pressed ? "white" : "lightgray"
                    border.color: "gray"
                    border.width: 1
                    implicitWidth: 9
                    implicitHeight: 9
                    radius: 5
                }
            }
        }

        Button {
            id: recordBtn
            width: 64
            height: 18
            checkable: true
            checked: false

            property string normalPic: "qrc:/images/pb_record_close.png"
            property string checkedPic: "qrc:/images/pb_record_open.png"

            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.verticalCenter: micBar.verticalCenter

            style: ButtonStyle {
                background: Rectangle {
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    color: "transparent"
                    BorderImage {
                        source: control.checked ? recordBtn.checkedPic : recordBtn.normalPic
                    }
                }
            }
        }

        Text {
            id: time
            text: "00:00:00"
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#585858"

            anchors.horizontalCenter: recordBtn.horizontalCenter
            anchors.top: recordBtn.bottom
            anchors.topMargin: 7
        }

        Button {
            id: startBtn
            width: 90
            height: 30
            checkable: true
            checked: false

            Text {
                anchors.centerIn: parent
                text: parent.checked ? qsTr("关闭推流") : qsTr("开始直播")
                font.family: "微软雅黑"
                font.pixelSize: 14
                color: "#FFFFFF"
            }

            style: ButtonStyle {
                background: Rectangle {
                    radius: 15
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#4AB134" }
                        GradientStop { position: 1.0; color: "#73C20E" }
                    }
                }
            }

            anchors.right: recordBtn.left
            anchors.rightMargin: 20
            anchors.verticalCenter: soundEffectBtn.verticalCenter

        }

        Button {
            id: setBtn
            width: 18
            height: 18

            property string normalPic: "qrc:/images/live tool_icon_settings_normal.png"
            property string hoverPic: "qrc:/images/live tool_icon_settings_hover.png"

            anchors.right: startBtn.left
            anchors.rightMargin: 20
            anchors.verticalCenter: startBtn.verticalCenter

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
