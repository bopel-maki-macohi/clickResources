import flixel.FlxG;

enum abstract CenterBlockTier(Int) from Int to Int
{
	var TIER_OVERWORLD = 1;

	public var blocks(get, never):Array<String>;

	function get_blocks():Array<String>
	{
		switch (this)
		{
			case TIER_OVERWORLD:
				return CenterBlockTiers.TIER_OVERWORLD_BLOCKS;
		}

		return [];
	}
}

class CenterBlockTiers
{
	public static var TIER_OVERWORLD_BLOCKS:Array<String> = ['dirt', 'log', 'wheat-seed', 'pebble'];

	public static function getItems(amount:Int, tier:Array<String>)
	{
		while (amount > 0)
		{
			Main.savedata.inventory.push(tier[FlxG.random.int(0, tier.length - 1)]);

			amount--;
		}
	}
}
