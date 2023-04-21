import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Page {
    id: root

    signal labOneButtonClicked();
    signal labTwoButtonClicked();
    signal labThirdButtonClicked();
    signal labFourthButtonClicked();
    signal labFiveButtonClicked();

    background: Rectangle {
        id: mainBackground
        color: "#3c3c3c"

    }
    Grid {
        id: buttonPicker
        x: 0
        y: 0
        anchors.verticalCenterOffset: 28
        anchors.horizontalCenterOffset: 10
        layer.enabled: true
        layoutDirection: Qt.LeftToRight
        flow: Grid.LeftToRight
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        rows: 1; columns: 5; spacing: 4


        Button{
            id: lab1Button
            text: "Lab 1"
            transformOrigin: Item.Center
            onClicked:{
                root.labOneButtonClicked();
            }
        }


        Button{
            id: lab2Button
            text: "Lab 2"
            onClicked:{
                root.labTwoButtonClicked();
            }
        }

        Button {
            id: lab3Button
            text: "Lab 3"
            onClicked:{
                root.labThirdButtonClicked();
            }
        }

        Button {
            id: lab4Button
            text: "Lab 4"
            onClicked:{
                root.labFourthButtonClicked();
            }
        }

        Button {
            id: lab5Button
            text: "Lab 5"
            onClicked: {
                root.labFiveButtonClicked();
            }
        }
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
