import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick 2.12
import QtQuick 2.0


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Grid{
        id: calcpart
        columns: 1
        rows: 3
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top:parent.top
        anchors.bottom: parent.bottom


        Grid{
            id: calcpart1
            columns: 3
            rows: 1
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height /3


            Item {
                id: nb_a
                height: parent.height /3
                width:  parent.width /3
                anchors.verticalCenter: parent.verticalCenter
                TextField {
                    id : value_A
                    anchors.horizontalCenter: parent.horizontalCenter
                    validator: DoubleValidator{}
                    placeholderText: "Nombre A"
                }
            }
            Item {
                id: caseope
                height: parent.height /3
                width:  parent.width /3
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                ComboBox {
                    id : comboope
                    anchors.horizontalCenter: parent.horizontalCenter

                    anchors.left: value_A.right
                    model :["+", "-", "x"]

                }
            }
            Item {
                id: value_B
                height: parent.height /3
                width:  parent.width /3
anchors.left: caseope.right
                anchors.verticalCenter: parent.verticalCenter
                TextField {
                    anchors.horizontalCenter: parent.horizontalCenter

                    validator: DoubleValidator{}
                    placeholderText: "Nombre B"
                }
            }




        }



        Item {
            id: res
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: calcpart1.bottom
            height: parent.height /3
            Text {
                id: resval
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 21
                text: qsTr("RESULTAT")
            }
        }
        Grid{
            id: calcpart2
            columns: 2
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: res.bottom
            height: parent.height /3

            Item {
                id: resetnb
                anchors.left: parent.left
                anchors.right: parent.right
                Text {
                    id: resetnbb
                    text: qsTr("AC")
                }
            }
            Item {
                id: signegal
                anchors.left: parent.left
                anchors.right:parent.right
                Text {
                    id: signegali
                    text: qsTr("=")
                }
            }
        }
    }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:4}D{i:3}D{i:7}D{i:6}D{i:9}D{i:8}D{i:2}D{i:12}D{i:11}
D{i:15}D{i:14}D{i:17}D{i:16}D{i:13}D{i:1}
}
##^##*/
