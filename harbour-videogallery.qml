import QtQuick 2.0
import Sailfish.Silica 1.0

ApplicationWindow {
    cover: Component {
        CoverBackground {
            Label {
                text: qsTr ("Video Gallery");
                anchors.centerIn: parent;
            }
        }
    }
    initialPage: Component {
        Page {
            Label {
                text: qsTr ("Video Gallery");
                anchors.centerIn: parent;
            }
        }
    }
}
