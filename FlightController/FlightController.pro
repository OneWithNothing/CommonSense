#-------------------------------------------------
#
# CommonSense project - FlightController utility.
#
#-------------------------------------------------

QT       += core gui widgets

TARGET = FlightController
TEMPLATE = app

CONFIG += static
INCLUDEPATH += ../hidapi/hidapi
LIBS += -lhidapi

win32 {
    LIBS += -L$$PWD/../hidapi/windows/.libs -lsetupapi
    RC_FILE = WindowsIcon.rc
}
macx {
    LIBS += -L$$PWD/../hidapi/mac/.libs -rpath @executable_path/../Frameworks
    ICON = FlightController.icns
}

SOURCES += main.cpp \
    FlightController.cpp \
    LogViewer.cpp \
    DeviceInterface.cpp \
    Events.cpp \
    MatrixMonitor.cpp \
    LayoutEditor.cpp \
    ScancodeList.cpp \
    ThresholdEditor.cpp \
    DeviceConfig.cpp \
    LayerConditions.cpp

HEADERS  += \
    FlightController.h \
    LogViewer.h \
    DeviceInterface.h \
    Events.h \
    call_once.h \
    singleton.h \
    ../c2/c2_protocol.h \
    MatrixMonitor.h \
    ../c2/nvram.h \
    LayoutEditor.h \
    ScancodeList.h \
    ThresholdEditor.h \
    DeviceConfig.h \
    LayerConditions.h

FORMS    += \
    FlightController.ui \
    MatrixMonitor.ui \
    LayoutEditor.ui \
    ThresholdEditor.ui

DISTFILES +=
