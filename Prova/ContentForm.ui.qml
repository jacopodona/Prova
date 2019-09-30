mport QtQuick 2.4

Item {
    width: 400
    height: 400

    Text {
        id: element
        x: 39
        y: 23
        text: qsTr("Nome")
        font.pixelSize: 12
    }

    TextInput {
        id: textInput
        x: 39
        y: 56
        width: 80
        height: 96
        font.pixelSize: 12
    }
}
