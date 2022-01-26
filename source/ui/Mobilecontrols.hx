package ui;

import flixel.FlxG;
import flixel.group.FlxSpriteGroup;

import ui.FlxVirtualPad;
import ui.Hitbox;

import flixel.FlxG;
import flixel.input.FlxInput;
import flixel.input.actions.FlxAction;
import flixel.input.actions.FlxActionInput;
import flixel.input.actions.FlxActionInputDigital;
import flixel.input.actions.FlxActionManager;
import flixel.input.actions.FlxActionSet;
import flixel.input.gamepad.FlxGamepadButton;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;
import flixel.group.FlxGroup;
import flixel.ui.FlxButton;

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
		var curcontrol:HitboxType = DEFAULT;

		switch (mania){
			case 0:
				curcontrol = DEFAULT;
			case 1:
				curcontrol = SIX;
			case 2:
				curcontrol = NINE;					
			case 3:
				curcontrol = FIVE;	
			case 4:
				curcontrol = SEVEN;
			case 5:
				curcontrol = EIGHT;
			case 6:
				curcontrol = ONE;
			case 7:
				curcontrol = TWO;
			case 8:
				curcontrol = THREE;									
			default:
				curcontrol = DEFAULT;
		}
			_hitbox = new Hitbox(curcontrol);
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
