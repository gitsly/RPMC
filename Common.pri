QMAKE_CXX_FLAGS += -std=c++11
WARNINGS += -Wall

#Make sure all projects have access to other projects
INCLUDEPATH += ..



MOC_DIR = mocs
UI_DIR = uics
OBJECTS_DIR = objs

unix {

    if(isEmpty(PREFIX)) {
        PREFIX = /usr
    }

    INCLUDEDIR = $$PREFIX/include/RPMC
    BINDIR = $$PREFIX/bin
    LIBDIR = $$PREFIX/lib/rpmc
    INTDIR = $$INCLUDEDIR/Plugins
    DATADIR = $$PREFIX/share/RPMC
}

#Include the LIBDIR path
LIBS += -L$$LIBDIR
