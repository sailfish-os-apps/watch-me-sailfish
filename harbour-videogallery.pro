TARGET = harbour-videogallery

QT += core gui multimedia quick qml concurrent

CONFIG += sailfishapp

INCLUDEPATH += \
    $$PWD/video-gallery

SOURCES += \
    $$PWD/harbour-videogallery.cpp \
    $$PWD/video-gallery/SharedObject.cpp

HEADERS += \
    $$PWD/video-gallery/SharedObject.h

RESOURCES += \
    $$PWD/harbour-videogallery.qrc

OTHER_FILES += \
    $$PWD/rpm/harbour-videogallery.changes.in \
    $$PWD/rpm/harbour-videogallery.spec \
    $$PWD/rpm/harbour-videogallery.yaml \
    $$PWD/harbour-videogallery.desktop

