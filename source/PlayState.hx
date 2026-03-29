package;

import flixel.FlxState;

class PlayState extends FlxState
{
	public var centerBlock:Block = new Block('dirt');

	override public function create()
	{
		super.create();

		add(centerBlock);
		centerBlock.screenCenter();

		centerBlock.onClick.add(centerBlockClick);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	public function centerBlockClick() {}
}
