package;

import flixel.FlxState;

class PlayState extends FlxState
{
	public var block:Block = new Block('dirt');

	override public function create()
	{
		super.create();

		add(block);
		block.screenCenter();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
