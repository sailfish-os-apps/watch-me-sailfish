
#include <QGuiApplication>
#include <QtQuick>
#include <QObject>
#include <QDir>

#include <sailfishapp.h>

#include "SharedObject.h"

int main (int argc, char * argv []) {
    QGuiApplication * app = SailfishApp::application (argc, argv);
    QQuickView * view = SailfishApp::createView ();
    view->engine()->rootContext ()->setContextProperty ("Shared", new SharedObject (app));
    view->engine()->rootContext ()->setContextProperty ("HomePath", QUrl::fromLocalFile (QDir::homePath ()));
    view->setSource (QUrl ("qrc:///harbour-videogallery.qml"));
    view->show ();
    return app->exec ();
}

