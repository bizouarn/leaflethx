package leaflet;

@:jsRequire("leaflet", "Point") extern class Point {
	function new(x:Float, y:Float, ?round:Bool);
	function clone():Point;
	function add(otherPoint:PointExpression):Point;
	function subtract(otherPoint:PointExpression):Point;
	function divideBy(num:Float):Point;
	function multiplyBy(num:Float):Point;
	function scaleBy(scale:PointExpression):Point;
	function unscaleBy(scale:PointExpression):Point;
	function round():Point;
	function floor():Point;
	function ceil():Point;
	function trunc():Point;
	function distanceTo(otherPoint:PointExpression):Float;
	function equals(otherPoint:PointExpression):Bool;
	function contains(otherPoint:PointExpression):Bool;
	function toString():String;
	var x : Float;
	var y : Float;
	static var prototype : Point;
}