import QtQuick 2.0
import Sailfish.Silica 1.0
import "video-gallery"

ApplicationWindow {
    allowedOrientations: Orientation.All;
    cover: Component {
        CoverBackground {
            Label {
                text: qsTr ("Watch'me");
                anchors.centerIn: parent;
            }
        }
    }
    initialPage: Component {
        Page {
            allowedOrientations: (gallery.isPlaying ? Orientation.Landscape :  Orientation.All);

            VideoGallery {
                id: gallery;
                fontSize: Theme.fontSizeMedium;
                fontName: Theme.fontFamilyHeading;
            }
        }
    }
}
