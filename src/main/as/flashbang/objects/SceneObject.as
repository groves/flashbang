//
// Flashbang - a framework for creating Flash games
// Copyright (C) 2008-2012 Three Rings Design, Inc., All Rights Reserved
// http://github.com/threerings/flashbang
//
// This library is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this library.  If not, see <http://www.gnu.org/licenses/>.

package flashbang.objects {

import starling.display.DisplayObject;

import flashbang.GameObject;
import flashbang.components.DisplayComponent;

/**
 * A convenience class that implements DisplayComponent and manages a displayObject directly.
 */
public class SceneObject extends GameObject
    implements DisplayComponent
{
    public function SceneObject (displayObject :DisplayObject = null, name :String = null,
        group :String = null)
    {
        _displayObject = displayObject;
        _name = name;
        _group = group;
    }

    override public function get objectNames () :Array
    {
        return _name == null ? [] : [ _name ];
    }

    override public function get objectGroups () :Array
    {
        return _group == null ? [] : [ _group ];
    }

    public function get display () :DisplayObject
    {
        return _displayObject;
    }

    protected var _displayObject :DisplayObject;
    protected var _name :String;
    protected var _group :String;
}

}
