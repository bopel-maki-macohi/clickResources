package;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.FlxState;

class PlayState extends FlxState
{
	public var centerBlock:Block = new Block('dirt');

	public var inventoryText:FlxText = new FlxText();

	override public function create()
	{
		super.create();

		add(centerBlock);
		centerBlock.screenCenter();

		centerBlock.onClick.add(centerBlockClick);

		inventoryText.text = 'Inventory';
		inventoryText.size = 32;
		add(inventoryText);
		inventoryText.screenCenter(X);
		inventoryText.y = 10;
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		inventoryText.underline = FlxG.mouse.overlaps(inventoryText);

		if (FlxG.mouse.justPressed && inventoryText.underline)
			FlxG.switchState(() -> new InventoryState());
	}

	public function centerBlockClick() {}
}
