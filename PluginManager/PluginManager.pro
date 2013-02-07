#-------------------------------------------------
#
# Project created by QtCreator 2013-02-06T19:28:30
#
#-------------------------------------------------
!include(../Common.pri) {
    error("Couldn't find Common.pri")
}


QT       -= gui

TARGET = pluginmanager
TEMPLATE = lib

DEFINES += PLUGINMANAGER_LIBRARY

SOURCES += pluginmanager.cpp
HEADERS += pluginmanager.h\
        PluginManager_global.h \
    PluginInterfaces/IPlugin.h

INTERFACES +=   PluginInterfaces/IPlugin.h

unix {

    #WORKS
    interfaces.path = $$INTDIR
    interfaces.files = $$INTERFACES

    target.path = $$LIBDIR
    INSTALLS = target interfaces
}



#INT_FILES =
#for(FILE, INTERFACES) {
#    INT_FILES += $${_PRO_FILE_PWD_}/$${FILE}
#    QMAKE_POST_LINK += $$quote(cp $${_PRO_FILE_PWD_}/$${FILE} $$INTDIR$$escape_expand(\n\r))
#}

#POST_TARGETDEPS += $${INT_FILES}
