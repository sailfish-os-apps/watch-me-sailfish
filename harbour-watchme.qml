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
                lineWidth: 0;
                rounding: Theme.paddingSmall;
                buttonColor: Theme.rgba (Theme.primaryColor, 0.2);
                pressedColor: Theme.rgba (Theme.highlightBackgroundColor, Theme.highlightBackgroundOpacity);
                textColor: Theme.primaryColor;
                fontSize: Theme.fontSizeMedium;
                fontName: Theme.fontFamilyHeading;
                colWidth: Theme.buttonWidthMedium;
                padding: Theme.paddingMedium;
                controlSize: Theme.itemSizeMedium;
            }
        }
    }
}
