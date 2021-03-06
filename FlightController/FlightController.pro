#-------------------------------------------------
#
# CommonSense project - FlightController utility.
#
#-------------------------------------------------

QT       += core gui widgets

TARGET = FlightController
TEMPLATE = app

CONFIG += static c++17

CONFIG(release, debug|release):DEFINES += QT_NO_DEBUG_OUTPUT

win32 {
    INCLUDEPATH += $$PWD/../mingw32/include
    LIBS += -L$$PWD/../mingw32/lib -lhidapi -lsetupapi
    RC_FILE = WindowsIcon.rc
}
macx {
    LIBS += -L$$PWD/../../hidapi/mac/.libs -lhidapi
    ICON = FlightController.icns
}
linux {
    LIBS += -lhidapi-hidraw
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
    MacroEditor.cpp \
    DeviceConfig.cpp \
    LayerConditions.cpp \
    FirmwareLoader.cpp \
    CyACD.cpp \
    LayerCondition.cpp \
    Delays.cpp \
    Hardware.cpp \
    Macro.cpp \
    DeviceSelector.cpp

HEADERS  += \
    ../c2/nvram.h \
    settings.h \
    FlightController.h \
    LogViewer.h \
    DeviceInterface.h \
    Events.h \
    MatrixMonitor.h \
    LayoutEditor.h \
    ScancodeList.h \
    ThresholdEditor.h \
    MacroEditor.h \
    DeviceConfig.h \
    LayerConditions.h \
    FirmwareLoader.h \
    CyACD.h \
    LayerCondition.h \
    Delays.h \
    Hardware.h \
    Macro.h \
    DeviceSelector.h \
    ../c2/c2_protocol.h

FORMS    += \
    FlightController.ui \
    MatrixMonitor.ui \
    LayoutEditor.ui \
    ThresholdEditor.ui \
    MacroEditor.ui \
    Hardware.ui \
    DeviceSelector.ui

DISTFILES +=
