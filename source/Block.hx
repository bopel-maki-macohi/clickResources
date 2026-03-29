import flixel.FlxSprite;

class Block extends FlxSprite
{
    public var block:String;

	override public function new(block:String)
	{
		super();

        this.block = block;
	}
}
