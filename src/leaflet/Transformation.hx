package leaflet;

@:jsRequire("leaflet", "Transformation") extern class Transformation {
	function new(a:Float, b:Float, c:Float, d:Float);
	function transform(point:Point, ?scale:Float):Point;
	function untransform(point:Point, ?scale:Float):Point;
	static var prototype : Transformation;
}