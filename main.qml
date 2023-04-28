import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Light")


    NumberAnimation
            {
                id: anime
                target: image
                properties: "x"
                from: image.x
                to: 468
                duration: 1000
                running: m==true?true:false
            }
    NumberAnimation
            {
                id: anime1
                target: image
                properties: "x"
                from: image.x
                to: 356
                duration: 1000
                running: m==false && image.x!=356?true:false
            }

    NumberAnimation
            {
                id: anime22
                target: image
                properties: "x"
                from: image.x
                to: 356
                duration: 4500
                running: n==true?true:false
            }
    property var n: false
    property var m: false
    Image {
        id: image1
        x: 83
        y: 55
        width: 190
        height: 261
        fillMode: Image.PreserveAspectFit
        source: "qrc:/lamp1.png"
        visible: n==false | m==false | image.x==356?true:false
    }

    Image {
        id: image2
        x: 83
        y: 55
        width: 190
        height: 261
        fillMode: Image.PreserveAspectFit
        source: "qrc:/lamp2.png"
        visible: n==true && m==true && image.x!=356?true:false
    }

    Button {
        id: button
        x: 14
        y: 84
        width: 48
        height: 165
        text: qsTr("O")
        font.bold: true
        font.pointSize: 28
        onClicked: {
            if (n==false && m==true){
                n=true

            }
            else
            {
                n=false

            }

        }
        Rectangle
            {
                anchors.fill: parent
                color: "transparent"
                radius: 15
                border.color: "green"
                border.width: 6
            }
    }

    Rectangle {
        id: rectangle
        x: 100
        y: 233
        width: 156
        height: 83
        color: "#052dba"
        radius: 35
    }

    Rectangle {
        id: rectangle1
        x: 255
        y: 262
        width: 74
        height: 25
        radius: 10
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#052647"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
    }

    Rectangle {
        id: rectangle2
        x: 328
        y: 77
        width: 295
        height: 227
        radius: 20
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#ada31a"
            }

            GradientStop {
                position: 1
                color: "#d5c608"
            }
        }
        border.width: 2
    }

    RoundButton {
        id: roundButton
        x: 571
        y: 262
        width: 34
        height: 34
        text: "+"
        font.bold: true
        font.pointSize: 16
        onClicked: {
            if (image.x==356)
                n = false
            if (m==false){
                m=true

            }
            else
            {
                m=false

            }
        }
    }

    Rectangle {
        id: rectangle3
        x: 552
        y: 275
        width: 13
        height: 12
        color: m==true?"yellow":"#ffffff"
        radius: 6
    }

    Rectangle {
        id: rectangle4
        x: 352
        y: 111
        width: 147
        height: 31
        color: "#ffffff"
        radius: 5
        border.width: 3
        border.color: "#ff0000"
    }

    Image {
        id: image
        x: 356
        y: 114
        width: 25
        height: 25
        sourceSize.width: 300
        fillMode: Image.PreserveAspectFit
        source: "qrc:ball.png"
    }

    Rectangle {
        id: rectangle5
        x: 498
        y: 121
        width: 8
        height: 11
        color: "#fa2323"
        radius: 3
    }

    Rectangle {
        id: rectangle6
        x: 360
        y: 116
        width: 17
        height: 22
        color: "#0ae947"
        visible: image.x>375?true:false
    }

    Rectangle {
        id: rectangle7
        x: 378
        y: 116
        width: 17
        height: 22
        color: "#0ae947"
        visible:image.x>396?true:false
    }

    Rectangle {
        id: rectangle8
        x: 396
        y: 116
        width: 17
        height: 22
        color: "#0ae947"
        visible: image.x>413?true:false
    }

    Rectangle {
        id: rectangle9
        x: 414
        y: 116
        width: 17
        height: 22
        color: "#0ae947"
        visible: image.x>430?true:false
    }

    Rectangle {
        id: rectangle10
        x: 432
        y: 116
        width: 17
        height: 22
        color: "#0ae947"
        visible: image.x>448?true:false
    }

    Rectangle {
        id: rectangle11
        x: 450
        y: 116
        width: 17
        height: 22
        color: "#0ae947"
        visible: image.x>465?true:false
    }

    Rectangle {
        id: rectangle12
        x: 474
        y: 14
        width: 118
        height: 65
        radius: 16
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#5ae580"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
        border.width: 2
        Image {
            id: img23
            x: 30
            y: 6
            source: "qrc:/snake.png"
        }
    }

    Rectangle {
        id: rectangle13
        x: 437
        y: 40
        width: 37
        height: 22
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#ffffff"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
    }

    Rectangle {
        id: rectangle14
        x: 396
        y: 40
        width: 41
        height: 39
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#ffffff"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
    }

    Rectangle {
        id: rectangle15
        x: 28
        y: 249
        width: 20
        height: 60
        gradient: Gradient {
            GradientStop {
                position: 0.03
                color: "#7a7070"
            }

            GradientStop {
                position: 0.413
                color: "#e89292"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }

        }
    }

    Rectangle {
        id: rectangle16
        x: 6
        y: 309
        width: 64
        height: 14
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#733333"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
    }

    Rectangle {
        id: rectangle17
        x: 352
        y: 303
        width: 20
        height: 48
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#030000"
            }

            GradientStop {
                position: 1
                color: "#d3a8a8"
            }
        }
    }

    Rectangle {
        id: rectangle18
        x: 572
        y: 303
        width: 20
        height: 48
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#030000"
            }

            GradientStop {
                position: 1
                color: "#d3a8a8"
            }
        }
    }

    Label {
        id: label
        x: 70
        y: 375
        width: 489
        height: 71
        color: "#0a04e9"
        text: qsTr("Для запуска питания нажмите  +  , если батарея сядет лампочка погаснет и следует перезапустить питание для автоматической смены батареи")
        font.italic: true
        font.bold: true
        font.pointSize: 16
        font.family: "Times New Roman"
        wrapMode: Text.WordWrap
        verticalAlignment: Text.AlignVCenter
    }





}
