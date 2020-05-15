import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1

Dialog {
    id: dialog
    width: 360
    height: 200
    visible: true

    contentItem: Rectangle {
        anchors.fill: parent
        color: "#262626"
        border.width: 1
        border.color: "#585858"

        Rectangle {
           id: title
           anchors.left: parent.left
           anchors.right: parent.right
           anchors.top: parent.top
           anchors.margins: 1
           height: 34
           color: "#2F2F2F"

           Text {
               id: titleName
               text: qsTr("全屏")
               font.family: "微软雅黑"
               font.pixelSize: 14
               color: "#4AB134"
               anchors.left: parent.left
               anchors.leftMargin: 20
               anchors.verticalCenter: parent.verticalCenter
           }

           Button {
               id: closeBtn
               width: 11
               height: 12

               anchors.right: parent.right
               anchors.rightMargin: 10
               anchors.verticalCenter: parent.verticalCenter

               style: ButtonStyle {
                   background: Rectangle {
                       implicitWidth: parent.width
                       implicitHeight: parent.height
                       color: "transparent"
                       BorderImage {
                           source: control.hovered ? "qrc:/images/pb_close_normal.png" : "qrc:/images/pb_close_pressed.png"
                       }
                   }
               }
           }
        }

        Text {
            id: selected
            text: qsTr("请选择显示器")
            font.family: "微软雅黑"
            font.pixelSize: 12
            color: "#999999"
            anchors.top: title.bottom
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 40
        }

        ComboBox {
            id: combox
            width: 280
            height: 30

            anchors.top: selected.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 40
            style: ComboBoxStyle {
                background: Rectangle {
                    radius: 4
                    implicitWidth: parent.width
                    implicitHeight: parent.height
                    border.width: 1
                    border.color: "#585858"
                    color: "transparent"
                }
            }
        }
    }
}
