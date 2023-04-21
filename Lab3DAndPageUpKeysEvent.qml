import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import com.lab3.event 1.0

Page {

    signal backButtonClicked();
    id: root
    background: Rectangle {
        id: lab3Page
        width: parent.width; height: parent.height
        color: "white"
        ScrollView{
            anchors.fill: parent
            clip: true
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            implicitHeight: height
            Label{
                id: logs
                padding: 10
                text: "Enter \'Page Up\' and \'D\' something happens!"
            }
        }
    }
    Keys.onPressed:  (event) =>
                     {
                         if(event.key === Qt.Key_D)//PageUp
                         {
                             logs.text += "\n" + keyEvent.getFourthKeyDEvent;
                         }
                         if(event.key === 16777235)//PageUp
                         {
                             logs.text += "\n" + keyEvent.getFourthKeyPageUpEvent;
                         }
                     }

    BackButton{onBackButtonClicked: root.backButtonClicked();}

    KeyboardEvents{
        id: keyEvent
    }
}
