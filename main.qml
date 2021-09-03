/***************************************************************************
**
** Copyright (C) 2016 Medical Technologies CZ a.s.. All rights reserved.
** Contact: http://www.medictech.com
**
** This file is a part of 088 project, projects based on 088
** or related utilities.
**
** Without prior written permission from Medical Technologies CZ a.s.,
** the file must not be modified, distributed and/or otherwise used.
**
***************************************************************************/

/*!
  \file   main.qml
  \author kubins
  \date   17.5.2019
  \brief
*/

import QtQuick 2.14
import QtQuick.Window 2.2
import QtQuick.Layouts 1.14
import QtQuick.Controls 2.14

Window {
    id: root

    visible: true
    width: 660
    height: 640
    title: qsTr("TestQml")

    // maximum possible smiles is 4^2 = 16
    property int smilesCount: 4
    property int smileSize: Math.min(width / smilesCount, height / smilesCount)

    GridView {
        id: grid
        anchors.fill: parent
        anchors.leftMargin: root.smileSize * 0.05
        anchors.topMargin: anchors.leftMargin

        cellWidth: root.smileSize
        cellHeight: cellWidth

        model: smiles
        delegate: Smile {
            width: root.smileSize * 0.9
            height: width

            angle: model.angle
            color: model.color
            happy: model.happy ? PathArc.Clockwise : PathArc.Counterclockwise
        }
    }


    RowLayout {
        anchors.fill: parent
        spacing: 6
        id: buttons

        Button {
            text: "Increase speed"
            onClicked:
            {
                for (var i = 0; i < grid.count; ++i)
                {
                    var itemSmile = grid.itemAtIndex(i)
                    itemSmile.increaseRotationSpeed()
                }
            }
        }
        Button {
            text: "Decrease speed"
            onClicked:
            {
                for (var i = 0; i < grid.count; ++i)
                {
                    var itemSmile = grid.itemAtIndex(i)
                    itemSmile.decreaseRotationSpeed()
                }
            }
        }
    }
}
