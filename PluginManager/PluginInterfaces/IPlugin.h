#ifndef IPLUGIN_H_
#define IPLUGIN_H_

#include <QString>

class IPlugin
{

public:

    virtual ~IPlugin() { }

    virtual QString getFriendlyName() = 0;
    virtual QString getAuthorName() = 0;

    virtual int getMajorVersion() = 0;
    virtual int getMinorVersion() = 0;

};

QT_BEGIN_NAMESPACE
#define iid "com.xarxer.IPlugin"
Q_DECLARE_INTERFACE(IPlugin, iid)
QT_END_NAMESPACE

#endif
