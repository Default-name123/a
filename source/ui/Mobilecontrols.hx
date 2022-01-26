package ui;

import flixel.FlxG;
import flixel.group.FlxSpriteGroup;

import ui.FlxVirtualPad;
import ui.Hitbox;

import Config;

class Mobilecontrols extends FlxSpriteGroup
{
	public var mode:ControlsGroup = HITBOX;

	public var _hitbox:Hitbox;
	var config:Config;

	public function new() 
	{
		super();
		
		config = new Config();

		// load control mode num from Config.hx
		mode = getModeFromNumber(config.getcontrolmode());
		trace(config.getcontrolmode());
			_hitbox = new Hitbox();
			add(_hitbox);
		
	}


	public static function getModeFromNumber(modeNum:Int):ControlsGroup {
		return switch (modeNum)
		{
			case 0: HITBOX;

			default: HITBOX;

		}
	}
}

enum ControlsGroup {
	HITBOX;
}
