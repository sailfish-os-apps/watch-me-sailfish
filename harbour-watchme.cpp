
#include <QGuiApplication>
#include <QtQuick>
#include <QObject>
#include <QDir>

#include <sailfishapp.h>

#include "SharedObject.h"

int main (int argc, char * argv []) {
    QGuiApplication * app = SailfishApp::application (argc, argv);
    app->setApplicationName ("harbour-watchme");
    QQuickView * view = SailfishApp::createView ();
    view->engine()->rootContext ()->setContextProperty ("Shared", new SharedObject (app));
    view->engine()->rootContext ()->setContextProperty ("HomePath", QUrl::fromLocalFile (QDir::homePath ()));
    view->setSource (QUrl ("qrc:///harbour-watchme.qml"));
    view->show ();
    return app->exec ();
}

