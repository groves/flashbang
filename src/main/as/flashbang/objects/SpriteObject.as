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

import starling.display.Sprite;

/**
 * A SceneObject that creates and manages a Sprite as its displayObject.
 */
public class SpriteObject extends SceneObject
{
    public function SpriteObject (name :String = null, group :String = null)
    {
        super(new Sprite(), name, group);
        _sprite = Sprite(_displayObject);
    }

    public function get sprite () :Sprite
    {
        return _sprite;
    }

    protected var _sprite :Sprite;
}
}
