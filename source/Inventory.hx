enum abstract Inventory(Array<String>) from Array<String> to Array<String>
{
	public function getCountOfItem(item:String):Int
		return filter(s -> return s == item).length;

    /**
        yoink
    **/

	public function concat(a:Array<String>):Array<String>
		return this.concat(a);

	public function join(sep:String):String
		return this.join(sep);

	public function pop():Null<String>
		return this.pop();

	public function push(x:String):Int
		return this.push(x);

	public function reverse():Void
		return this.reverse();

	public function shift():Null<String>
		return this.shift();

	public function slice(pos:Int, ?end:Int):Array<String>
		return this.slice(pos, end);

	public function sort(f:String->String->Int):Void
		return this.sort(f);

	public function splice(pos:Int, len:Int):Array<String>
		return this.splice(pos, len);

	public function toString():String
		return this.toString();

	public function unshift(x:String):Void
		return this.unshift(x);

	public function insert(pos:Int, x:String):Void
		return this.insert(pos, x);

	public function remove(x:String):Bool
		return this.remove(x);

	public function contains(x:String):Bool
		return this.contains(x);

	public function indexOf(x:String, ?fromIndex:Int):Int
		return this.indexOf(x, fromIndex);

	public function lastIndexOf(x:String, ?fromIndex:Int):Int
		return this.lastIndexOf(x, fromIndex);

	public function copy():Array<String>
		return this.copy();

	public function map<S>(f:String->S):Array<S>
		return this.map(f);

	public function filter(f:String->Bool):Array<String>
		return this.filter(f);

	public function iterator():haxe.iterators.ArrayIterator<String>
		return this.iterator();

	public function keyValueIterator():haxe.iterators.ArrayKeyValueIterator<String>
		return this.keyValueIterator();

	public function resize(len:Int):Void
		return this.resize(len);
}
