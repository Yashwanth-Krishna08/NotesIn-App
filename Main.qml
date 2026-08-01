import QtQuick
import QtQuick.Controls
import QtQuick.Window
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Note App")
    StackView{
        id:stack
        anchors.fill: parent
        initialItem:Home{}
    }
    ListModel{
        id:notes
    }
}
