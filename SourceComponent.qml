import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: sourceCom

    Rectangle {
        anchors.fill: parent
        color: "#2F2F2F"

        Component {
            id:listDelegate

            Rectangle {
                color: "#2F2F2F"
                width: parent.width
                height: 26

                Image {
                    id: isShow
                    source: "qrc:/images/live tool_icon_According_to.png"
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    id: sourceName
                    text: name
                    font.family: "微软雅黑"
                    font.pixelSize: 12
                    color: "#DCDCDC"
                    anchors.left: isShow.right
                    anchors.leftMargin: 6
                    anchors.verticalCenter: parent.verticalCenter
                }

                Button {
                    id: delBtn
                    width: 10
                    height: 12
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.verticalCenter: parent.verticalCenter

                    style: ButtonStyle {
                        background: Rectangle {
                            color: "transparent"
                            implicitWidth: parent.width
                            implicitHeight: parent.height
                            BorderImage {
                                source: "qrc:/images/live tool_icon_delete.png"
                            }
                        }
                    }
                }

                Button {
                    id: downBtn
                    width: 10
                    height: 6
                    anchors.right: delBtn.left
                    anchors.rightMargin: 10
                    anchors.verticalCenter: parent.verticalCenter

                    style: ButtonStyle {
                        background: Rectangle {
                            color: "transparent"
                            implicitWidth: parent.width
                            implicitHeight: parent.height
                            BorderImage {
                                source: "qrc:/images/live tool_icon_down.png"
                            }
                        }
                    }
                }

                Button {
                    id: upBtn
                    width: 10
                    height: 6
                    anchors.right: downBtn.left
                    anchors.rightMargin: 10
                    anchors.verticalCenter: parent.verticalCenter

                    style: ButtonStyle {
                        background: Rectangle {
                            color: "transparent"
                            implicitWidth: parent.width
                            implicitHeight: parent.height
                            BorderImage {
                                source: "qrc:/images/live tool_icon_up.png"
                            }
                        }
                    }
                }

                Button {
                    id: setBtn
                    width: 10
                    height: 10
                    anchors.right: upBtn.left
                    anchors.rightMargin: 10
                    anchors.verticalCenter: parent.verticalCenter

                    style: ButtonStyle {
                        background: Rectangle {
                            color: "transparent"
                            implicitWidth: parent.width
                            implicitHeight: parent.height
                            BorderImage {
                                source: "qrc:/images/live tool_menu_icon_settings .png"
                            }
                        }
                    }
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        parent.color = "#262626"
                    }
                    onExited: {
                        parent.color = "#2F2F2F"
                    }

                }
            }



//            Text {
//                id: listname;
//                x:0
//                width: parent.width;
//                height: 32;
//                font.pointSize: 15;
//                verticalAlignment: Text.AlignVCenter;
//                horizontalAlignment: Text.AlignHCenter;
//                text: name;
//                color: ListView.view.currentIndex == index ? "red" : "blue";
//                MouseArea {
//                    anchors.fill: parent;
//                    onClicked: {
//                        console.log("click index ", index)
//                    }
//                }
//            }
        }

        ListView {
            id: sourceList
            width: parent.width
            height: parent.height

            delegate: listDelegate
            model: myListModel
        }
    }

}
