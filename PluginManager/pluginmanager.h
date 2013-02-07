#ifndef PLUGINMANAGER_H
#define PLUGINMANAGER_H

#include "PluginManager_global.h"
#include <QObject>
#include <QString>
#include <QStringList>
#include <QDir>

class PLUGINMANAGERSHARED_EXPORT PluginManager : public QObject
{

    Q_OBJECT

public:
    explicit PluginManager(QObject* parent = 0);

signals:

public slots:

    void loadPlugin(const QString& name);

private:

    void internalLoadPlugin(const QString& fullName);

};

#endif // PLUGINMANAGER_H
