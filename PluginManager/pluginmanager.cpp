#include "pluginmanager.h"


PluginManager::PluginManager(QObject *parent)
{
}

void PluginManager::loadPlugin(const QString& name)
{
    QString pluginRoot = "/usr/lib/rpmc/plugins/";
    QDir pluginDirectory(pluginRoot);

    if(!pluginDirectory.exists())
    {
        //TODO: Add logging
        return;
    }

    if(!pluginDirectory.cd(name))
    {
        //TODO: Add logging
        return;
    }

    QStringList libFiles = pluginDirectory.entryList(QStringList("*.so"));
    foreach(QString lib, libFiles)
    {
        internalLoadPlugin(pluginDirectory.absoluteFilePath(lib));
    }

}

void PluginManager::internalLoadPlugin(const QString &fullName)
{
    //If we reach this function, the plugin exists and fullName is the
    //absolute path to the .so file


}
