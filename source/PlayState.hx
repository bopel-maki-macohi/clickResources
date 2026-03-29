package;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.FlxState;

class PlayState extends FlxState
{
	public var centerBlock:Block = new Block('dirt');

	public var inventoryText:InteractText = new InteractText(0, 10, 0, 'Inventory', 32);

	override public function create()
	{
		super.create();

		add(centerBlock);
		centerBlock.screenCenter();

		centerBlock.onClick.add(centerBlockClick);

		add(inventoryText);
		inventoryText.screenCenter(X);
		inventoryText.onClick.add(() -> FlxG.switchState(() -> new InventoryState()));
	}

	public function centerBlockClick()
	{
		CenterBlockTiers.getItems(FlxG.random.int(1, 3), Main.savedata.centerBlockTier.blocks);
	}
}
