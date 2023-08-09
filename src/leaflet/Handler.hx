package leaflet;

@:jsRequire("leaflet", "Handler") extern class Handler extends Class_ {
	function new(map:Map_);
	function enable():Handler;
	function disable():Handler;
	function enabled():Bool;
	@:optional
	function addHooks():Void;
	@:optional
	function removeHooks():Void;
	static var prototype : Handler;
}