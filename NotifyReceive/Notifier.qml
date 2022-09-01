import QtQuick 2.15

Item {

    property alias rectColor : notifierRectId.color
    width: notifierRectId.width
    height: notifierRectId.height
    property int count: 0
    signal notify(string count)

    Rectangle
    {
        id: notifierRectId
        color: "#15ddda"
        width: 100
        height: 100

        Text
        {
            id: notifierTextId
            font.pointSize: 20
            color: "black"
            text: count
            font.family: "Ubuntu"
            horizontalAlignment: Text.AlignHCenter
            anchors.centerIn: parent
        }

        MouseArea
        {
            id: notifierMouseId
            anchors.fill: parent
            anchors.centerIn: parent
            onClicked:
            {
                count++
                console.log("Value of count: " + count)
                notify(count)
            }
        }
    }
}
