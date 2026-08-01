import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Layouts
Item {
    property string subject
    property string details
    Rectangle{
        id:box
        width:500
        state:"one"
        color:"#287"
        radius:10
        ColumnLayout
        {
            anchors.fill:parent
            Text{
                Layout.fillWidth: true
                leftPadding: 10
                id:mytex
                text:subject
                font.bold: true
                font.pointSize: 15
                color:"#fff"
                wrapMode: Text.Wrap
            }
        }

        states: [
            State {
                name: "one"
                PropertyChanges {
                    target: box
                    height:mytex.implicitHeight+20
                }
                PropertyChanges {
                    target: mytex
                    text:subject
                }
            },
            State{
                name:"two"
                PropertyChanges {
                    target: box
                    height:mytex.implicitHeight+20
                }
                PropertyChanges {
                    target: mytex
                    text:subject+"\n\n"+details
                }
            }
        ]
        transitions: [
            Transition {
                from: "one"
                to: "two"
                NumberAnimation{
                    properties: "height"
                    duration:100
                }
            },
            Transition {
                from: "two"
                to: "one"
                NumberAnimation{
                    properties: "height"
                    duration:100
                }
            }
        ]
        MouseArea{
            anchors.fill:parent
            onClicked: {
                if(box.state==="one")
                {
                    box.state="two"
                }
                else
                {
                    box.state="one"
                }
            }
        }

    }
}
