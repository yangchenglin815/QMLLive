#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "sourcelistmodel.h"
#include "cube.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    SourceListModel *pModel = new SourceListModel;

    qmlRegisterType<Cube>("OpenGLCube", 1, 0, "Cube");

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("myListModel", pModel);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
