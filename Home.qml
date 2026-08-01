import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Layouts
Item {
    ColumnLayout
    {
        anchors.fill:parent
        Rectangle{
            id:win
            Layout.fillHeight: true
            Layout.fillWidth: true
            color:"#287"
            Rectangle{
                id:main
                width:300
                height:250
                anchors.centerIn: parent
                color:"#fff"
                radius: 20
                ColumnLayout
                {
                    anchors.centerIn: parent
                    width:200
                    spacing:10
                    Rectangle{
                        id:lo
                        width:150
                        height:90
                        Layout.alignment: Qt.AlignHCenter
                        Image {
                            id: logo
                            anchors.fill:parent
                            source: "title.png"
                        }
                    }
                    Text{
                        id:vision
                        text:"Never forget your ideas."
                        color:"#287"
                        font.italic: true
                        font.bold: true
                        font.pointSize: 10
                        Layout.alignment: Qt.AlignHCenter
                    }
                    Rectangle{
                        id:addbutton
                        Layout.fillWidth: true
                        height: 40
                        color:"#287"
                        radius:5
                        Text{
                            text:"➕ Add Note"
                            color:"#fff"
                            anchors.fill:parent
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pointSize: 15
                        }
                        MouseArea{
                            anchors.fill:parent
                            onPressed: {
                                addbutton.color="#299"
                            }
                            onReleased: {
                                addbutton.color="#287"
                            }
                            onClicked: {
                                stack.push(Qt.resolvedUrl("Add.qml"))
                            }
                        }
                    }
                    Rectangle{
                        id:viewbutton
                        Layout.fillWidth: true
                        height: 40
                        color:"#287"
                        radius:5
                        Text{
                            text:"📖 My Notes"
                            color:"#fff"
                            anchors.fill:parent
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pointSize: 15
                        }
                        MouseArea{
                            anchors.fill:parent
                            onPressed: {
                                viewbutton.color="#299"
                            }
                            onReleased: {
                                viewbutton.color="#287"
                            }
                            onClicked: {
                                stack.push(Qt.resolvedUrl("See.qml"))
                            }
                        }
                    }

                }
            }
        }
    }
}
