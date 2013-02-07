#ifndef KERNEL_H
#define KERNEL_H

#include "Kernel_global.h"
#include <QObject>
#include <PluginManager/pluginmanager.h>

class KERNELSHARED_EXPORT Kernel : public QObject
{

    Q_OBJECT

public:
    explicit Kernel(QObject* parent = 0);

signals:

public slots:

private:

    PluginManager* pluginManager;

};

#endif // KERNEL_H
