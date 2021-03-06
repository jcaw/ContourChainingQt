DISTFILES += \
    ContourChainingQt.pro.user

CONFIG += c++11

QT += core opengl gui

# C++ 11 for some convenient for loop iterators
unix:!macx:QMAKE_CXXFLAGS += -std=c++11 -fopenmp

# TriMesh dependency http://gfx.cs.princeton.edu/proj/trimesh2/
INCLUDEPATH +="./trimesh2/include"

win32:LIBS += -L"$$PWD/trimesh2/lib.Win32/"
unix:!macx:LIBS += -L"$$PWD/trimesh2/lib.Linux64/"

LIBS += -ltrimesh
win32:LIBS += -lopengl32 # OpenGL dependency for Windows
unix:!macx:LIBS += -lgomp

HEADERS += \
    CatmullRomSpline.h \
    ContourChain.h \
    ContourChainGroup.h \
    Interpolate.h \
    Line.h \
    OBJObject.h \
    mainwindow.h \
    glwidget.h

SOURCES += \
    CatmullRomSpline.cpp \
    ContourChain.cpp \
    ContourChainGroup.cpp \
    ContourChaining.cpp \
    Interpolate.cpp \
    Line.cpp \
    OBJObject.cpp \
    mainwindow.cpp \
    glwidget.cpp
