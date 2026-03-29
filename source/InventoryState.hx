import flixel.FlxG;
import flixel.FlxState;

class InventoryState extends FlxState
{
	public var backText:InteractText = new InteractText(0, 10, 0, 'Back', 32);

	override function create()
	{
		super.create();

		backText.screenCenter(X);
		add(backText);
		backText.onClick.add(() -> FlxG.switchState(() -> new InventoryState()));
	}
}
