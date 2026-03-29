package;

import lime.app.Application;
import flixel.FlxG;
import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public static var savedata(get, set):SaveData;

	static function get_savedata():SaveData
	{
		return FlxG.save?.data?.savedata ?? null;
	}

	static function set_savedata(data:SaveData):SaveData
	{
		if (!FlxG.save.isBound)
			return null;

		FlxG.save.data.savedata = data;

		return data;
	}

	public function new()
	{
		super();

		FlxG.save.bind('clickResources', Application.current.meta.get('company'));

		savedata ??= {};

		addChild(new FlxGame(0, 0, PlayState));
	}
}
