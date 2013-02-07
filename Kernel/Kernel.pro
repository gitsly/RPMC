#-------------------------------------------------
#
# Project created by QtCreator 2013-02-06T18:57:00
#
#-------------------------------------------------
!include(../Common.pri) {
    error("Couldn't find Common.pri")
}


QT       -= gui

TARGET = kernel
TEMPLATE = lib

LIBS += -lpluginmanager

DEFINES += KERNEL_LIBRARY

SOURCES += kernel.cpp
HEADERS += kernel.h\
        Kernel_global.h

unix {
    target.path = $$LIBDIR
    INSTALLS = target
}
