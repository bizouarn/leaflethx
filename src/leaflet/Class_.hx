package leaflet;

@:jsRequire("leaflet", "Class") extern class Class_ {
	function new();
	static var prototype : Class_;
	static function extend(props:Dynamic):Dynamic;
	static function include(props:Dynamic):Dynamic;
	static function mergeOptions(props:Dynamic):Dynamic;
	@:overload(function(methodName:String, args:haxe.extern.Rest<Dynamic>):Dynamic { })
	static function addInitHook(initHookFn:() -> Void):Dynamic;
	static function callInitHooks():Void;
}