import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Layouts
Item {
    property string s
    property string d
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
                ColumnLayout{
                    anchors.centerIn: parent
                    width:530
                    spacing:5
                    Text{
                        text:"My Notes"
                        font.bold: true
                        font.pointSize: 25
                        font.italic: true
                        Layout.alignment: Qt.AlignHCenter
                        color:"#287"
                    }

                    ListView{
                        Layout.fillWidth: true;
                        Layout.alignment: Qt.AlignHCenter
                        model:notes
                        delegate:Note{
                            subject: r
                            details: c
                        }
                    }


                ColumnLayout{
                    anchors.bottom: parent
                    Button
                    {
                        id:back
                        text:"Back"
                        onClicked:
                        {
                            stack.pop();
                        }
                    }
                }

                }
            }
        }
    }
}