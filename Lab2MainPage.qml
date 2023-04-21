import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Page {
    id: root
    signal backButtonClicked();
    signal cpuButtonClicked();
    signal memoryButtonClicked();
    signal deviceButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "#3c3c3c"
    }
    Grid{
        id: infoButtons
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        rows: 1; columns: 3; spacing: 7
        Button
        {
            id: cpuButton
            height: 100
            onClicked: root.cpuButtonClicked()

            Image {
                id: image
                anchors.fill: parent
                z: 1
                source: "unnamed.png"
                fillMode: Image.Stretch
            }

        }
        Button
        {
            id: memoryButton
            width: 100
            height: 100
            highlighted: false
            onClicked: root.memoryButtonClicked()

            Image {
                id: image1
                x: 0
                y: 0
                width: 100
                height: 100
                source: "computer-memory-icon-0.png"
                fillMode: Image.PreserveAspectFit
            }
        }
        Button
        {
            id: deviceButton
            width: 100
            height: 100
            onClicked: root.deviceButtonClicked()

            Image {
                id: image2
                width: 100
                height: 100
                source: "peripheral_12175421225180603960.jpg"
                fillMode: Image.PreserveAspectFit
            }
        }
    }
    BackButton
    {
        onBackButtonClicked:
        {
            root.backButtonClicked();
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:4;anchors_height:100;anchors_width:100;anchors_x:"-8";anchors_y:"-6"}
}
##^##*/
