/*
 * Copyright (C) 2014
 *      Andrew Hayzen <ahayzen@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.3


Character {
    id: character

    property double leftPressed: 0
    property double rightPressed: 0
    property bool upPressed: false

    Timer {
        running: leftPressed > 0
        interval: 16
        repeat: true
        triggeredOnStart: true
        onTriggered: character.left(leftPressed)
    }

    Timer {
        running: rightPressed > 0
        interval: 16
        repeat: true
        triggeredOnStart: true
        onTriggered: character.right(rightPressed)
    }

    Timer {
        running: upPressed
        interval: 16
        repeat: true
        triggeredOnStart: true
        onTriggered: character.jump()
    }
}
