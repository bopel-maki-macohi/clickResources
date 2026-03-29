import flixel.util.FlxSignal;
import flixel.FlxG;
import flixel.text.FlxText;

class InteractText extends FlxText
{
	public var onClick:FlxSignal = new FlxSignal();
	override function update(elapsed:Float)
	{
		super.update(elapsed);

		underline = FlxG.mouse.overlaps(this);

		if (FlxG.mouse.justPressed && underline)
            onClick.dispatch();
	}
}
