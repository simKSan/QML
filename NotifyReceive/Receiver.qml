import QtQuick 2.15

Item {

    property alias rectColor :  receiverRectId.color
    width:  receiverRectId.width
    height:  receiverRectId.height
    property int count: 0

    function receive(count)
    {
        receiverTextId.text = count
        console.log("Receiver count: " + count)
    }

    Rectangle
    {
        id: receiverRectId
        color: "#4b6f2c"
        width: 100
        height: 100

        Text
        {
            id: receiverTextId
            font.pointSize: 20
            color: "black"
            text: "0"
            font.family: "Ubuntu"
            horizontalAlignment: Text.AlignHCenter
            anchors.centerIn: parent
        }
    }

}
