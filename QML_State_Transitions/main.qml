import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: banner
        width: 150; height: 100; border.color: "black"

        Column {
            anchors.centerIn: parent
            Text {
                id: code
                text: "lzl好帅"
                opacity: 0.01
            }
            Text {
                id: create
                text: "lzl超级帅"
                opacity: 0.01
            }
            Text {
                id: deploy
                text: "lzl真的超级帅"
                opacity: 0.01
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: playbanner.start()
        }

        SequentialAnimation {
            id: playbanner
            running: false
            NumberAnimation { target: code; property: "opacity"; to: 1.0; duration: 200}
            NumberAnimation { target: create; property: "opacity"; to: 1.0; duration: 200}
            NumberAnimation { target: deploy; property: "opacity"; to: 1.0; duration: 200}
        }
    }

//    //复制自Transitions During State Changes
//    Rectangle {
//        width: 75; height: 75
//        id: button
//        state: "RELEASED"

//        MouseArea {
//            anchors.fill: parent
//            onPressed: button.state = "PRESSED"
//            onReleased: button.state = "RELEASED"
//        }

//        states: [
//            State {
//                name: "PRESSED"
//                PropertyChanges { target: button; color: "lightblue"}
//            },
//            State {
//                name: "RELEASED"
//                PropertyChanges { target: button; color: "lightsteelblue"}
//            }
//        ]

//        //如果duration时间很短的话不加这一段其实是一样的效果 加上这一段并且长一点的duration就是多了点击有颜色渐变的过程
//        transitions: [
//            Transition {
//                from: "PRESSED"
//                to: "RELEASED"
//                ColorAnimation { target: button; duration: 100}
//            },
//            Transition {
//                from: "RELEASED"
//                to: "PRESSED"
//                ColorAnimation { target: button; duration: 100}
//            }
//        ]
//    }

    //======================================================

//    //从Using Predefined Targets and Properties复制而来
//    Rectangle {
//        id: rect
//        width: 100; height: 100
//        color: "red"

//        //模板就是 PropertyAnimation on 属性 {...}
//        //变x和y坐标
//        PropertyAnimation on x {
//            to: 100
//            duration: 2000
//        }
//        PropertyAnimation on y {
//            to: 100
//            duration: 2000
//        }

//        //变宽度和颜色 都是2秒完成
//        PropertyAnimation on width {
//            to: 300
//            duration: 2000
//        }
//        PropertyAnimation on color {
//            to: "yellow"
//            duration: 2000
//        }

//        //按顺序变颜色的写法
////        SequentialAnimation on color {
////            ColorAnimation { to: "yellow"; duration: 1000 }
////            ColorAnimation { to: "blue"; duration: 1000 }
////        }
//    }


    //=====================================================================

//    //本段代码从Animation and Transitions in Qt Quick复制过来
//    Rectangle {
//        id: flashingblob
//        width: 75; height: 75
//        color: "blue"
//        opacity: 1.0

//        //鼠标点击 动画开启
//        MouseArea {
//            //使鼠标区域填满整个矩形
//            anchors.fill: parent

//            //当鼠标点击时 启动三个动画
//            onClicked: {
//                animateColor.start()
//                animateOpacity.start()
//                animateWidth.start()
//            }
//        }

//        //此动画将 flashingblob 的颜色从蓝色变为绿色，持续时间为1秒
//        PropertyAnimation {
//            id: animateColor
//            target: flashingblob
//            properties: "color"
//            to: "green"
//            duration: 1000  //持续时间1s
//        }

//        //此动画将透明度从0.1（半透明）变为1.0（不透明），持续时间为2秒
//        NumberAnimation {
//            id: animateOpacity
//            target: flashingblob
//            properties: "opacity"
//            from: 0.1
//            to: 1.0
//            duration: 2000  //持续时间2s
//            //loops: Animation.Infinite //意思是该动画将无限次重复播放，直到被手动停止或界面关闭
//       }

//        //此动画将矩形的宽度从75增加到150，持续时间为2秒
//        NumberAnimation {
//            id: animateWidth
//            target: flashingblob
//            properties: "width"
//            from: 75
//            to: 150
//            duration: 2000  //持续时间2s
//            //loops: Animation.Infinite
//       }
//    }

    //=====================================================================

//    //本段代码从Item中states中复制过来的样例
//    Rectangle {
//        id: root
//        width: 100; height: 100
//        state: "normal" //样例中没有的 需要自己手动添加

//        //各种状态 在状态中进行属性修改 将所有修改都封装在state中
//        states: [
//            State {
//                name: "normal"
//                PropertyChanges { target: root; color: "black"}
//            },
//            State {
//                name: "red_color"
//                PropertyChanges { target: root; color: "red"; width: 200}
//            },
//            State {
//                name: "blue_color"
//                PropertyChanges { target: root; color: "blue"; height: 200}
//            }
//        ]

//        //添加鼠标操作
//        MouseArea {
//            anchors.fill: parent

//            //按下鼠标不放显示红色
//            onPressed: {
//                root.state = "red_color"
//            }

//            //松开鼠标显示蓝色
//            onReleased: {
//                root.state = "blue_color"
//            }
//        }
//    }
}
