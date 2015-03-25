TARGET = harbour-watchme

QT += core gui multimedia quick qml concurrent

CONFIG += sailfishapp

INCLUDEPATH += \
    $$PWD/video-gallery

SOURCES += \
    $$PWD/harbour-watchme.cpp \
    $$PWD/video-gallery/SharedObject.cpp

HEADERS += \
    $$PWD/video-gallery/SharedObject.h

RESOURCES += \
    $$PWD/harbour-watchme.qrc

OTHER_FILES += \
    $$PWD/rpm/harbour-watchme.changes.in \
    $$PWD/rpm/harbour-watchme.spec \
    $$PWD/rpm/harbour-watchme.yaml \
    $$PWD/harbour-watchme.desktop

