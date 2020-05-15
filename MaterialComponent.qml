import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
   id: materialCom

   Rectangle {
       anchors.fill: parent
       color: "#2F2F2F"

       Grid {
          id: grid
          columns: 4
          spacing: 15
          anchors.top: parent.top
          anchors.topMargin: 6
          anchors.left: parent.left
          anchors.leftMargin: 6
          anchors.right: parent.right
          anchors.rightMargin: 6

          Rectangle {
               id: camera
               width: 48; height: 48
               color: "#2F2F2F"
               radius: 4

               Image {
                   id: cameraImg
                   source: "qrc:/images/live tool_icon_camera_normal.png"
                   anchors.horizontalCenter: parent.horizontalCenter
                   anchors.top: parent.top
                   anchors.topMargin: 6
               }
               Text {
                   id: cameraText
                   text: qsTr("摄像头")
                   font.family: "微软雅黑"
                   font.pixelSize: 12
                   color: "#DCDCDC"

                   anchors.top: cameraImg.bottom
                   anchors.topMargin: 4
                   anchors.horizontalCenter: parent.horizontalCenter
               }
               MouseArea {
                   anchors.fill: parent
                   hoverEnabled: true
                   onEntered: {
                       cameraImg.source = "qrc:/images/live tool_icon_camera_hover.png"
                       cameraText.color = "#4AB134"
                       camera.color = "#262626"
                   }
                   onExited: {
                       cameraImg.source = "qrc:/images/live tool_icon_camera_normal.png"
                       cameraText.color = "#DCDCDC"
                       camera.color = "#2F2F2F"
                   }
               }
          }

          Rectangle {
               id: video
               width: 48; height: 48
               color: "#2F2F2F"
               radius: 4

               Image {
                   id: videoImg
                   source: "qrc:/images/live tool_icon_video_normal.png"
                   anchors.horizontalCenter: parent.horizontalCenter
                   anchors.top: parent.top
                   anchors.topMargin: 6
               }
               Text {
                   id: videoText
                   text: qsTr("视频")
                   font.family: "微软雅黑"
                   font.pixelSize: 12
                   color: "#DCDCDC"

                   anchors.top: videoImg.bottom
                   anchors.topMargin: 4
                   anchors.horizontalCenter: parent.horizontalCenter
               }
               MouseArea {
                   anchors.fill: parent
                   hoverEnabled: true
                   onEntered: {
                       videoImg.source = "qrc:/images/live tool_icon_video_hover.png"
                       videoText.color = "#4AB134"
                       video.color = "#262626"
                   }
                   onExited: {
                       videoImg.source = "qrc:/images/live tool_icon_video_normal.png"
                       videoText.color = "#DCDCDC"
                       video.color = "#2F2F2F"
                   }
               }
          }

          Rectangle {
               id: pic
               width: 48; height: 48
               color: "#2F2F2F"
               radius: 4

               Image {
                   id: picImg
                   source: "qrc:/images/live tlool_icon_picture_normal.png"
                   anchors.horizontalCenter: parent.horizontalCenter
                   anchors.top: parent.top
                   anchors.topMargin: 6
               }
               Text {
                   id: picText
                   text: qsTr("图片")
                   font.family: "微软雅黑"
                   font.pixelSize: 12
                   color: "#DCDCDC"

                   anchors.top: picImg.bottom
                   anchors.topMargin: 4
                   anchors.horizontalCenter: parent.horizontalCenter
               }
               MouseArea {
                   anchors.fill: parent
                   hoverEnabled: true
                   onEntered: {
                       picImg.source = "qrc:/images/live tlool_icon_picture_hover.png"
                       picText.color = "#4AB134"
                       pic.color = "#262626"
                   }
                   onExited: {
                       picImg.source = "qrc:/images/live tlool_icon_picture_normal.png"
                       picText.color = "#DCDCDC"
                       pic.color = "#2F2F2F"
                   }
               }
          }

          Rectangle {
               id: text
               width: 48; height: 48
               color: "#2F2F2F"
               radius: 4

               Image {
                   id: textImg
                   source: "qrc:/images/live_tool_icon_text_normal.png"
                   anchors.horizontalCenter: parent.horizontalCenter
                   anchors.top: parent.top
                   anchors.topMargin: 6
               }
               Text {
                   id: textText
                   text: qsTr("文本")
                   font.family: "微软雅黑"
                   font.pixelSize: 12
                   color: "#DCDCDC"

                   anchors.top: textImg.bottom
                   anchors.topMargin: 4
                   anchors.horizontalCenter: parent.horizontalCenter
               }
               MouseArea {
                   anchors.fill: parent
                   hoverEnabled: true
                   onEntered: {
                       textImg.source = "qrc:/images/live_tool_icon_text_hover.png"
                       textText.color = "#4AB134"
                       text.color = "#262626"
                   }
                   onExited: {
                       textImg.source = "qrc:/images/live_tool_icon_text_normal.png"
                       textText.color = "#DCDCDC"
                       text.color = "#2F2F2F"
                   }
               }
          }

          Rectangle {
               id: source
               width: 48; height: 48
               color: "#2F2F2F"
               radius: 4

               Image {
                   id: sourceImg
                   source: "qrc:/images/live tool_icon_source_normal.png"
                   anchors.horizontalCenter: parent.horizontalCenter
                   anchors.top: parent.top
                   anchors.topMargin: 6
               }
               Text {
                   id: sourceText
                   text: qsTr("直播源")
                   font.family: "微软雅黑"
                   font.pixelSize: 12
                   color: "#DCDCDC"

                   anchors.top: sourceImg.bottom
                   anchors.topMargin: 4
                   anchors.horizontalCenter: parent.horizontalCenter
               }
               MouseArea {
                   anchors.fill: parent
                   hoverEnabled: true
                   onEntered: {
                       sourceImg.source = "qrc:/images/live tool_icon_source_hover.png"
                       sourceText.color = "#4AB134"
                       source.color = "#262626"
                   }
                   onExited: {
                       sourceImg.source = "qrc:/images/live tool_icon_source_normal.png"
                       sourceText.color = "#DCDCDC"
                       source.color = "#2F2F2F"
                   }
               }
          }

          Rectangle {
               id: capture
               width: 48; height: 48
               color: "#2F2F2F"
               radius: 4

               Image {
                   id: captureImg
                   source: "qrc:/images/live tool_icon_screenshots_normal.png"
                   anchors.horizontalCenter: parent.horizontalCenter
                   anchors.top: parent.top
                   anchors.topMargin: 6
               }
               Text {
                   id: captureText
                   text: qsTr("截屏")
                   font.family: "微软雅黑"
                   font.pixelSize: 12
                   color: "#DCDCDC"

                   anchors.top: captureImg.bottom
                   anchors.topMargin: 4
                   anchors.horizontalCenter: parent.horizontalCenter
               }
               MouseArea {
                   anchors.fill: parent
                   hoverEnabled: true
                   onEntered: {
                       captureImg.source = "qrc:/images/live tool_icon_screenshots_hover.png"
                       captureText.color = "#4AB134"
                       capture.color = "#262626"
                   }
                   onExited: {
                       captureImg.source = "qrc:/images/live tool_icon_screenshots_normal.png"
                       captureText.color = "#DCDCDC"
                       capture.color = "#2F2F2F"
                   }
               }
          }

          Rectangle {
               id: full
               width: 48; height: 48
               color: "#2F2F2F"
               radius: 4

               Image {
                   id: fullImg
                   source: "qrc:/images/live tool_icon_full_normal.png"
                   anchors.horizontalCenter: parent.horizontalCenter
                   anchors.top: parent.top
                   anchors.topMargin: 6
               }
               Text {
                   id: fullText
                   text: qsTr("全屏")
                   font.family: "微软雅黑"
                   font.pixelSize: 12
                   color: "#DCDCDC"

                   anchors.top: fullImg.bottom
                   anchors.topMargin: 4
                   anchors.horizontalCenter: parent.horizontalCenter
               }
               MouseArea {
                   anchors.fill: parent
                   hoverEnabled: true
                   onEntered: {
                       fullImg.source = "qrc:/images/live tool_icon_full_hover.png"
                       fullText.color = "#4AB134"
                       full.color = "#262626"
                   }
                   onExited: {
                       fullImg.source = "qrc:/images/live tool_icon_full_normal.png"
                       fullText.color = "#DCDCDC"
                       full.color = "#2F2F2F"
                   }
                   onClicked: {

                   }
               }
          }

          Rectangle {
               id: window
               width: 48; height: 48
               color: "#2F2F2F"
               radius: 4

               Image {
                   id: windowImg
                   source: "qrc:/images/window_icon_full_normal.png"
                   anchors.horizontalCenter: parent.horizontalCenter
                   anchors.top: parent.top
                   anchors.topMargin: 6
               }
               Text {
                   id: windowText
                   text: qsTr("全屏")
                   font.family: "微软雅黑"
                   font.pixelSize: 12
                   color: "#DCDCDC"

                   anchors.top: windowImg.bottom
                   anchors.topMargin: 4
                   anchors.horizontalCenter: parent.horizontalCenter
               }
               MouseArea {
                   anchors.fill: parent
                   hoverEnabled: true
                   onEntered: {
                       windowImg.source = "qrc:/images/window_icon_full_hover.png"
                       windowText.color = "#4AB134"
                       window.color = "#262626"
                   }
                   onExited: {
                       windowImg.source = "qrc:/images/window_icon_full_normal.png"
                       windowText.color = "#DCDCDC"
                       window.color = "#2F2F2F"
                   }
               }
          }
       }
   }
}
