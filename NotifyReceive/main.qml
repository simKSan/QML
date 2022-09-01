import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: "Login Page"

    Notifier
    {
        id: notifierId
        Component.onCompleted:
        {
            notify.connect(receiverId.receive)
        }
    }

    Receiver
    {
        id: receiverId
         anchors.right: parent.right
    }
}
