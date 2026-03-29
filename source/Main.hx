package;

import CenterBlockTiers.CenterBlockTier;
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

		initalizeSave();

		trace('Save: ${savedata}');

		addChild(new FlxGame(0, 0, PlayState));
	}

	public function initalizeSave()
	{
		FlxG.save.bind('clickResources', Application.current.meta.get('company'));

		savedata ??= {
			centerBlockTier: null,
		};

		savedata.centerBlockTier ??= CenterBlockTier.TIER_OVERWORLD;
	}
}
