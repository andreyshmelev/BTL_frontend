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
  \file   Smile.qml
  \author kubins
  \date   17.5.2019
  \brief
*/

import QtQuick 2.14
import QtQuick.Shapes 1.12


Item {
    id: root

    property alias angle: smile.rotation
    property alias color: smile.color

    Rectangle {
        id: smile

        anchors.fill: parent
        radius: width / 2

        Shape {
           width: width
           height: height

           anchors.centerIn: parent

//           anchors.verticalCenter: parent.verticalCenter
//           anchors.verticalCenterOffset: -parent.height / 5
//           anchors.horizontalCenter: parent.horizontalCenter
//           anchors.horizontalCenterOffset: -parent.width / 5

           ShapePath {
              strokeWidth: 2
              strokeColor: 'red'
              fillColor: "transparent"
              startX: -width / 5
              startY: 10
              PathAngleArc {
                       centerX: 30
                       centerY: 30
                       radiusX: 50
                       radiusY: 100
                   }
           }
        }

        Shape {
            width: parent.width
            height: parent.height
            anchors.bottom: parent.bottom
            anchors.right: parent.right

            ShapePath {
                strokeColor: 'red'
                fillColor: "transparent"

                strokeWidth: 2
                capStyle: ShapePath.FlatCap

                PathAngleArc {
                    centerX: width/2
                    centerY: height/2
                    radiusX: 60
                    radiusY: 30
                    startAngle: -180
                    sweepAngle: 180
                }
            }
        }

        Rectangle {
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -parent.height / 5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -parent.width / 5
            width: parent.width * 0.2
            height: width
            radius: width / 2
            color: "white"
        }

        Rectangle {
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -parent.height / 5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: parent.width / 5
            width: parent.width * 0.2
            height: width

            radius: width / 2
            color: "white"
        }
    }
}
