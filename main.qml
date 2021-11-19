import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Grid{
        id : mainlayout
        columns: 1
        rows: 3
        anchors.top : parent.top
        anchors.bottom: parent.bottom
        flow: Grid.TopToBottom
        anchors.right: parent.right
        anchors.left: parent.left

        Item {
            id: topContainer
            height: parent.height /mainlayout.rows
            width: parent.width
            anchors.left: parent.left
            anchors.right: parent.right
            Text {
                id: testA
                text: qsTr("a")
            }
        }
        Item {
            id: midContainer
            height: parent.height /mainlayout.rows
            width: parent.width
            anchors.left: parent.left
            anchors.right: parent.right
            Text {
                id: testB
                text: qsTr("b")
            }
        }
        Item {
            id: botContainer
            height: parent.height /mainlayout.rows
            width: parent.width
            anchors.left: parent.left
            anchors.right: parent.right
            Text {
                id: testC
                text: qsTr("c")
            }
        }




//        Grid{
//            height: parent.height /mainlayout.rows
//            anchors.left: parent.left
//            anchors.right: parent.right

//            Item {
//                id: nb_a
//                TextField {
//                    validator: DoubleValidator{}

//                    placeholderText: "Nombre a"

//                }
//            }
//            Item {
//                id: nb_b
//                TextField {
//                    validator: DoubleValidator{}

//                    placeholderText: "Nombre a"

//                }
//            }
//            Item {
//                id: opelist
//                ComboBox {
//                    model :["+", "-", "x"]
//                    // horizontalCenter : ComboBox.AlignHCenter

//                }


//            }
//        }

//        Item {
//            id: res
//            anchors.left: parent.left
//            anchors.right: parent.right
//            height: parent.height /mainlayout.rows
//            Text {
//                id: resval
//                text: qsTr("RESULTAT")
//            }
//        }
//        Item {
//            id: resetnb
//            anchors.left: parent.left
//            anchors.right: parent.right
//            height: parent.height /mainlayout.rows
//            Text {
//                id: resetnbb
//                text: qsTr("AC")
//            }
//        }
  }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:3}D{i:2}D{i:5}D{i:4}D{i:7}D{i:6}D{i:1}
}
##^##*/
