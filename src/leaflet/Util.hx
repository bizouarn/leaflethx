package leaflet;

@:jsRequire("leaflet", "Util") @valueModuleOnly extern class Util {
	@:overload(function<D, S1, S2>(dest:D, src1:S1, src2:S2):Dynamic { })
	@:overload(function<D, S1, S2, S3>(dest:D, src1:S1, src2:S2, src3:S3):Dynamic { })
	@:overload(function(dest:Dynamic, src:haxe.extern.Rest<Dynamic>):Dynamic { })
	static function extend<D, S1>(dest:D, ?src:S1):Dynamic;
	static function create(proto:Null<Dynamic>, ?properties:js.lib.PropertyDescriptorMap):Dynamic;
	static function bind(fn:(args:haxe.extern.Rest<Dynamic>) -> Void, obj:haxe.extern.Rest<Dynamic>):() -> Void;
	static function stamp(obj:Dynamic):Float;
	static function throttle(fn:() -> Void, time:Float, context:Dynamic):() -> Void;
	static function wrapNum(num:Float, range:Array<Float>, ?includeMax:Bool):Float;
	static function falseFn():Bool;
	static function formatNum(num:Float, ?digits:ts.AnyOf2<Float, Bool>):Float;
	static function trim(str:String):String;
	static function splitWords(str:String):Array<String>;
	static function setOptions(obj:Dynamic, options:Dynamic):Dynamic;
	static function getParamString(obj:Dynamic, ?existingUrl:String, ?uppercase:Bool):String;
	static function template(str:String, data:Dynamic):String;
	static function isArray(obj:Dynamic):Bool;
	static function indexOf(array:Array<Dynamic>, el:Dynamic):Float;
	static function requestAnimFrame(fn:(timestamp:Float) -> Void, ?context:Dynamic, ?immediate:Bool):Float;
	static function cancelAnimFrame(id:Float):Void;
	static var lastId : Float;
	static var emptyImageUrl : String;
}