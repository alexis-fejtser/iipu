import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import com.lab3.event 1.0

Page {
    id: root
    signal backButtonClicked();
    signal firstPageButtonClicked();
    signal secondPageButtonClicked();
    signal thirdPageButtonClicked();
    signal fourthPageButtonClicked();


    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "#3c3c3c"
    }
    Grid
    {
        id: infoButtons
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        rows: 2; columns: 2; spacing: 7
        Button
        {
            id: dEventButton
            width: 100
            height: 40
            text: "Все локи"
            font.strikeout: false
            font.italic: false
            font.underline: false
            contentItem: Text {
                id: dEventButtonText
                text: dEventButton.text
                color: "#FFFFFF"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            wheelEnabled: false
            focusPolicy: Qt.StrongFocus
            hoverEnabled: true
            autoRepeat: false
            enabled: true
            display: AbstractButton.TextBesideIcon
            onClicked: root.firstPageButtonClicked()
            background: Rectangle {
                id: dEventButtonBg
                width: parent.width; height: parent.height
                color: "#3c3c3c"
            }

        }
        Button
        {
            id: pageUpKeyButton
            width: 269
            height: 40
            text: "Проверка состояния"
            visible: true
            onClicked: root.secondPageButtonClicked()
            contentItem: Text {
                id: pageUpKeyButtonText
                text: pageUpKeyButton.text
                color: "#FFFFFF"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                id: pageUpKeyButtonBg
                width: parent.width; height: parent.height
                color: "#3c3c3c"
            }
        }
        Button
        {
            id: funcKeyButton
            width: 100
            height: 40
            text: ""
            onClicked: root.thirdPageButtonClicked()
            contentItem: Text {
                id: funcKeyButtonText
                text: funcKeyButton.text
                color: "#FFFFFF"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                id: funcKeyButtonBg
                width: parent.width; height: parent.height
                color: "#3c3c3c"
            }
        }

        Button
        {
            id: dAndPageUpKeyButton
            height: 40
            text: "Проверка состояния и выключение"
            onClicked: root.fourthPageButtonClicked()
            contentItem: Text {
                id: dAndPageUpKeyButtonText
                text: dAndPageUpKeyButton.text
                color: "#FFFFFF"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                id: dAndPageUpKeyButtonBg
                width: parent.width; height: parent.height
                color: "#3c3c3c"
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

    Image {
        id: image
        z: -1
        anchors.fill: parent
        source: "333-keyboard-break.png"
        fillMode: Image.Stretch
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:8;anchors_height:100;anchors_width:100}
}
##^##*/
