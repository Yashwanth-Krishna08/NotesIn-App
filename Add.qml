import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Layouts
Item {
    ColumnLayout
    {
        anchors.fill:parent
        Rectangle{
            id:win1
            Layout.fillWidth: true
            Layout.fillHeight: true
            color:"#287"
            Rectangle{
                id:main1
                width:560
                height:400
                anchors.centerIn: parent
                color:"#fff"
                radius:5
                ColumnLayout
                {
                    anchors.centerIn: parent
                    width:530
                    spacing:10
                    Text{
                        text:"Add New Note"
                        font.bold: true
                        font.pointSize: 25
                        font.italic: true
                        Layout.alignment: Qt.AlignHCenter
                        color:"#287"
                    }
                    Text{
                        text:"Subject :"
                        font.pointSize: 10
                        Layout.alignment: Qt.AlignLeft
                        color:"#287"
                    }
                    TextField
                    {
                        id:sub
                        Layout.fillWidth: true
                        placeholderText: "The Subject of this note"
                        Layout.alignment: Qt.AlignLeft
                        font.pointSize: 13
                    }
                    Text{
                        text:"Details :"
                        font.pointSize: 10
                        Layout.alignment: Qt.AlignLeft
                        color:"#287"
                    }
                    TextArea
                    {
                        id:det
                        Layout.fillWidth: true
                        Layout.preferredHeight: 150
                        Layout.minimumHeight: 150
                        Layout.maximumHeight: 150
                        wrapMode: TextArea.Wrap
                        placeholderText: "Note details......"
                        Layout.alignment: Qt.AlignLeft
                        font.pointSize: 10
                        clip:true
                        background: Rectangle{
                            radius:8
                            color:"#fff"
                            border.color: "#666"
                        }
                    }
                    RowLayout
                    {
                        Layout.alignment: Qt.AlignRight
                        spacing: 10
                        Button{
                            id:clear
                            text:"Clear"
                            onClicked:
                            {
                                sub.text=""
                                det.text=""
                            }
                        }
                        Button{
                            id:back
                            text:"Back"
                            onClicked:
                            {
                                stack.pop()
                            }
                        }
                        Button{
                            id:save
                            text:"Save"
                            onClicked:
                            {
                                notes.append({
                                r:sub.text,
                                c:det.text
                                })
                                sub.text = ""
                                det.text = ""
                                stack.pop()
                            }
                        }
                    }
                }
            }
        }
    }
}
