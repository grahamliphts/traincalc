                            import QtQuick 2.14
                            import QtQuick.Window 2.14
                            import QtQuick.Controls 2.14
                            import QtQuick 2.12
                            import QtQuick 2.0
                            import Calculatrice 1.0
                            import QtQuick 2.1



                            Window {
                                width: 640
                                height: 480
                                id : window
                                visible: true
                                title: qsTr("Calculator")


                                    Rectangle{
                                        id: calcpart
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        height: parent.height/6
                                        width: parent.width

                                        color : "black"
                                        Button {
                                            id : buttonexit
                                            anchors.top: parent.top
                                            anchors.left : parent.left
                                            font.pointSize: parent.height/10
                                            height : parent.height / 5
                                            width : parent.width /12
                                            text : qsTr("exit")
                                            onClicked: {
                                             Qt.quit()
                                            }
                                        }

                                        Text {
                                                  id: resval
                                                  horizontalAlignment: Text.AlignRight
                                                  verticalAlignment: Text.AlignVCenter
                                                  height: parent.height
                                                  width: parent.width
                                                  text: qsTr( "0" )
                                                  color: "white"
                                                  font.pixelSize: parent.height
                                                  font.family: "Open Sans Regular"
                                              }
                                          }

                                        Item {
                                            id: button
                                            anchors.top: calcpart.bottom
                                            anchors.bottom: parent.bottom
                                            anchors.bottomMargin: 0
                                            anchors.left: parent.left
                                            anchors.right: parent.right

                                            Calculatrice{
                                                id : myCalculatrice

                                            }

                                            Button{
                                                id : buttonadd
                                                text : "+"
                                                font.pointSize: parent.height/10
                                                height : parent.height /4
                                                width: parent.width/5
                                                anchors.left: button3.right
                                                onClicked: {
                                                   myCalculatrice.operate(Calculatrice.Add)
                                                   resval.text = "+";
                                                }
                                            }
                                            Button{
                                                id : buttonmultiply
                                                text : "x"
                                                height : parent.height /4
                                                width: parent.width/5
                                                font.pointSize: parent.height/10
                                                anchors.left: button6.right
                                                anchors.top: buttonadd.bottom
                                                onClicked: {
                                                    myCalculatrice.operate(Calculatrice.Multiply)
                                                    resval.text = "x";
                                                }
                                            }
                                            Button{
                                                id : buttonsubstrate
                                                text : "-"
                                                font.pointSize: parent.height/10
                                                height : parent.height /4
                                                width: parent.width/5
                                                anchors.left: button9.right
                                                anchors.top: buttonmultiply.bottom
                                                onClicked: {
                                                    myCalculatrice.operate(Calculatrice.Substrate)
                                                    resval.text = "-";
                                                }
                                            }
                                            Button{
                                                id : buttonsplit
                                                text : "/"
                                                font.pointSize: parent.height/10
                                                height : parent.height /4
                                                width: parent.width/5
                                                anchors.left: buttonadd.right
                                                onClicked: {
                                                    myCalculatrice.operate(Calculatrice.Split)
                                                    resval.text = "/";
                                                }
                                            }
                                            Button{
                                                id : button0
                                                text : "0"
                                                height : parent.height /4
                                                font.pointSize: parent.height/10
                                                width: parent.width/5
                                                anchors.top: button8.bottom
                                                anchors.left : button7.right
                                                onClicked: {
                                                  resval.text = myCalculatrice.keyboard(0)

                                                }
                                            }
                                            Button{
                                                id : button1
                                                text : "1"
                                                height : parent.height /4
                                                font.pointSize: parent.height/10
                                                width: parent.width/5
                                                anchors.leftMargin: parent.margin
                                                anchors.top: parent.top
                                                onClicked: {
                                                    resval.text = myCalculatrice.keyboard(1)

                                                }
                                            }
                                            Button{
                                                id : button2
                                                text : "2"
                                                font.pointSize: parent.height/10
                                                height : parent.height /4
                                                width: parent.width/5

                                                anchors.left: button1.right
                                                onClicked: {
                                                    resval.text = myCalculatrice.keyboard(2)

                                                }
                                            }
                                            Button{
                                                id : button3
                                                text : "3"
                                                font.pointSize: parent.height/10
                                                height : parent.height /4
                                                width: parent.width/5
                                                anchors.left: button2.right
                                                onClicked: {
                                                    resval.text = myCalculatrice.keyboard(3)

                                                }
                                            }
                                            Button{
                                                id : button4
                                                text : "4"
                                                height : parent.height /4
                                                font.pointSize: parent.height/10
                                                width: parent.width/5
                                                anchors.top: button1.bottom
                                                onClicked: {

                                                    resval.text = myCalculatrice.keyboard(4)
                                                }
                                            }
                                            Button{
                                                id : button5
                                                text : "5"
                                                height : parent.height /4
                                                font.pointSize: parent.height/10
                                                width: parent.width/5
                                                anchors.left: button4.right
                                                anchors.top: button2.bottom
                                                onClicked: {
                                                    resval.text = myCalculatrice.keyboard(5)

                                                }
                                            }
                                            Button{
                                                id : button6
                                                text : "6"
                                                anchors.top: button3.bottom
                                                font.pointSize: parent.height/10
                                                anchors.left: button5.right
                                                height : parent.height /4
                                                width: parent.width/5
                                                onClicked: {
                                                    resval.text = myCalculatrice.keyboard(6)

                                                }
                                            }
                                            Button{
                                                id : button7
                                                text : "7"
                                                height : parent.height /4
                                                font.pointSize: parent.height/10
                                                width: parent.width/5
                                                anchors.top: button4.bottom
                                                onClicked: {
                                                    resval.text = myCalculatrice.keyboard(7)

                                                }
                                            }
                                            Button{
                                                id : button8
                                                text : "8"
                                                height : parent.height /4
                                                font.pointSize: parent.height/10
                                                width: parent.width/5
                                                anchors.left: button7.right
                                                anchors.top: button5.bottom
                                                onClicked: {
                                                    resval.text = myCalculatrice.keyboard(8)

                                                }
                                            }
                                            Button{
                                                id : button9
                                                text : "9"
                                                height : parent.height /4
                                                font.pointSize: parent.height/10
                                                width: parent.width/5
                                                anchors.top: button6.bottom
                                                anchors.left: button8.right

                                                onClicked: {
                                                    resval.text = myCalculatrice.keyboard(9)

                                                }
                                            }
                                            Button {
                                                id: buttonreset
                                                anchors.top: buttonsplit.bottom
                                                anchors.left: buttonmultiply.right
                                                font.pointSize: parent.height/11
                                                height : parent.height /4
                                                width: parent.width/5
                                                text: qsTr("AC")
                                                onClicked:{
                                                    resval.text = "0";
                                                    myCalculatrice.reset();
                                                }
                                            }


                                            Button {
                                                id: signequal
                                                anchors.top: buttonsubstrate.bottom
                                                anchors.left: buttondel.right
                                                font.pointSize: parent.height/10
                                                text: qsTr("=")
                                                height : parent.height /4
                                                width: parent.width/2.5
                                                onClicked: { resval.text = myCalculatrice.result(Calculatrice.Resultend);
                                                }
                                            }
                                            Button {
                                                id : buttondel
                                                anchors.top: button9.bottom
                                                anchors.left: button0.right
                                                font.pointSize: parent.height/10
                                                text : qsTr("←")
                                                height : parent.height /4
                                                width : parent.width/5
                                                onClicked: {
                                                    resval.text = myCalculatrice.sup()
                                                }
                                            }
                                            Button {
                                                id : buttonneg
                                                anchors.top: button7.bottom
                                                font.pointSize: parent.height/13
                                                text : qsTr("(-)")
                                                height : parent.height /4
                                                width : parent.width/5
                                                onClicked: {
                                                   resval.text ="-"
                                                   myCalculatrice.negative()
                                                }
                                            }
                                            Button {
                                                id : buttondot
                                                anchors.top: buttonreset.bottom
                                                anchors.left: buttonsubstrate.right
                                                font.pointSize: parent.height/13
                                                text : qsTr(".")
                                                height : parent.height /4
                                                width : parent.width/5
                                                onClicked: {
                                                   resval.text ="."
                                                   myCalculatrice.nbdot()
                                                }
                                            }




                                        }

}

                  /*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:2}D{i:3}D{i:1}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}
D{i:11}D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:20}D{i:21}D{i:22}
D{i:23}D{i:24}D{i:4}
}
##^##*/
