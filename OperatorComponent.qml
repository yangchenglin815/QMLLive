import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3

Item {
    id: operatorCom
    width: 250

    Rectangle {
        anchors.fill: parent
        color: "#262626"

        Rectangle {
            id: topLine
            width: parent.width
            height: 1
            color: "#282828"

            anchors.top: parent.top
        }

        TabBar {
            id: bar
            width: parent.width
            height: 36

            anchors.top: topLine.bottom

            background: Rectangle {
                anchors.fill: parent
                color: "#2F2F2F"
            }

            TabButton {
                height: parent.height

                Text {
                    text: "场景1"
                    font.family: "微软雅黑"
                    font.pixelSize: 12
                    color: bar.currentIndex == 0 ? "#4AB134" : "#DCDCDC"

                    anchors.centerIn: parent
                }

                background: Rectangle {
                    anchors.fill: parent
                    height: parent.height
                    color: bar.currentIndex == 0 ? "#2F2F2F" : "#2A2A2A"
                }
            }

            TabButton {
                height: parent.height

                Text {
                    text: "场景2"
                    font.family: "微软雅黑"
                    font.pixelSize: 12
                    color: bar.currentIndex == 1 ? "#4AB134" : "#DCDCDC"

                    anchors.centerIn: parent
                }

                background: Rectangle {
                    anchors.fill: parent
                    height: parent.height
                    color: bar.currentIndex == 1 ? "#2F2F2F" : "#2A2A2A"
                }

            }
        }

        StackLayout {
            id: stack
            width: parent.width
            height: 260
            currentIndex: bar.currentIndex
            anchors.top: bar.bottom

            SourceComponent {
                id: source1
            }

            SourceComponent {
                id: source2
            }
        }

        Label {
            id: label
            width: parent.width
            height: 37

            anchors.top: stack.bottom
            background: Rectangle {
                anchors.fill: parent
                color: "#2A2A2A"
            }

            Text {
                id: text
                text: qsTr("素材")
                font.family: "微软雅黑"
                font.pixelSize: 12
                color: "#DCDCDC"

                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        MaterialComponent {
            id: material
            width: parent.width
            height: 265
            anchors.top: label.bottom
        }

        Rectangle {
            id: bottomLine
            width: parent.width
            height: 1
            color: "#282828"

            anchors.bottom: parent.bottom
        }
    }
}
