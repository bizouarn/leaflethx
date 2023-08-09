package leaflet;

@:jsRequire("leaflet", "Bounds") extern class Bounds {
	@:overload(function(?points:ts.AnyOf2<Array<Point>, BoundsLiteral>):Bounds { })
	function new(topLeft:PointExpression, bottomRight:PointExpression);
	@:overload(function(otherBounds:BoundsExpression):Bounds { })
	function extend(point:PointExpression):Bounds;
	function getCenter(?round:Bool):Point;
	function getBottomLeft():Point;
	function getBottomRight():Point;
	function getTopLeft():Point;
	function getTopRight():Point;
	function getSize():Point;
	function contains(pointOrBounds:ts.AnyOf4<PointTuple, Point, BoundsLiteral, Bounds>):Bool;
	function intersects(otherBounds:BoundsExpression):Bool;
	function overlaps(otherBounds:BoundsExpression):Bool;
	function isValid():Bool;
	function pad(bufferRatio:Float):Bounds;
	function equals(otherBounds:BoundsExpression):Bool;
	@:optional
	var min : Point;
	@:optional
	var max : Point;
	static var prototype : Bounds;
}