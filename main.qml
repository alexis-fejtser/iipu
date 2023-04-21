import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
//import com.myController 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: "My IIPU project"

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: mainPage

    }

    MainPage {
        id: mainPage

        onLabOneButtonClicked:
        {
            stackView.push(pageLab1);
        }
        onLabTwoButtonClicked:
        {
            stackView.push(pageLab2);
        }
        onLabThirdButtonClicked:
        {
            stackView.push(pageLab3);
        }
        onLabFourthButtonClicked:
        {
            stackView.push(pageLab4);
        }
        onLabFiveButtonClicked:
        {
            stackView.push(pageLab5)
        }

        Image {
            id: image
            anchors.fill: parent
            z: -1
            visible: true
            source: "1624454647_27-phonoteka_org-p-ugarnie-oboi-na-rabochii-stol-krasivo-28.jpg"
            fillMode: Image.PreserveAspectCrop
        }
    }

    Lab1Page{
        id: pageLab1
        visible: false
        onBackButtonClicked:
        {
            stackView.pop(mainPage);
        }
    }

    Lab2MainPage {
        id: pageLab2
        visible: false
        Lab2CpuPage{
            id: cpuPage
            visible: false
            onBackButtonClicked:
            {
                stackView.pop(pageLab2);
            }
        }
        Lab2MemoryPage{
            id: memPage
            visible: false
            onBackButtonClicked:
            {
                stackView.pop(pageLab2)
            }
        }
        Lab2DevicesPage{
            id: devicePage
            visible: false
            onBackButtonClicked:
            {
                stackView.pop(pageLab2);
            }
        }

        onCpuButtonClicked: stackView.push(cpuPage)
        onMemoryButtonClicked: stackView.push(memPage)
        onDeviceButtonClicked: stackView.push(devicePage)

        onBackButtonClicked: stackView.pop(mainPage)
    }

    Lab3MainPage{
        id: pageLab3
        visible: false
        Lab3KeyDEvent
        {
            id: dPressEvent
            visible: false
            onBackButtonClicked:
            {
                stackView.pop(pageLab3);
            }
        }
        Lab3PageUpKeyEvent
        {
            id: pageUpEvent
            visible: false
            onBackButtonClicked:
            {
                stackView.pop(pageLab3);
            }
        }
        Lab3FuncKeyEvent
        {
            id: funcKeyEvent
            visible: false
            onBackButtonClicked:
            {
                stackView.pop(pageLab3);
            }
        }
        Lab3DAndPageUpKeysEvent
        {
            id: dAndPageUpKeyEvent
            visible: false
            onBackButtonClicked:
            {
                stackView.pop(pageLab3);
            }
        }
        onFirstPageButtonClicked: stackView.push(dPressEvent)
        onSecondPageButtonClicked: stackView.push(pageUpEvent)
        onThirdPageButtonClicked: stackView.push(funcKeyEvent)
        onFourthPageButtonClicked: stackView.push(dAndPageUpKeyEvent)
        onBackButtonClicked:
        {
            stackView.pop(mainPage);
        }
    }

    Lab4Page
    {
        id: pageLab4
        visible: false
        onBackButtonClicked: stackView.pop(mainPage)
    }

    Lab5Page
    {
        id:pageLab5
        visible: false
        onBackButtonClicked: stackView.pop(mainPage)
    }

}

/*##^##
Designer {
    D{i:3;anchors_height:480;anchors_width:640;anchors_x:0;anchors_y:0}
}
##^##*/
