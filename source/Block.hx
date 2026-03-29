import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.util.FlxSignal;
import flixel.FlxSprite;

class Block extends FlxSprite
{
	public var block(default, set):String;

	function set_block(b:String)
	{
		makeGraphic(16, 16, FlxColor.WHITE);
		return b;
	}

	public var onClick:FlxSignal;

	override public function new(block:String)
	{
		super();

		this.block = block;
		onClick = new FlxSignal();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.mouse.justPressed && FlxG.mouse.overlaps(this))
			onClick.dispatch();
	}
}
