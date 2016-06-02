/*
 *
 * Copyright (C) 2016 DMA <dma@ya.ru>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation. 
*/
#pragma once

#include <QPlainTextEdit>
#include "Events.h"
//#include <QWidget>

class LogViewer: public QPlainTextEdit
{
    Q_OBJECT

    public:
        LogViewer(QWidget *parent = NULL);
        bool event(DeviceMessage* e);

    public slots:
        void clearButtonClick(void);
        void copyAllButtonClick(void);
        void logMessage(QString msg);

};