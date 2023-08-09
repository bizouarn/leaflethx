package leaflet;

@:jsRequire("leaflet", "LatLngBounds") extern class LatLngBounds {
	@:overload(function(latlngs:LatLngBoundsLiteral):LatLngBounds { })
	function new(southWest:LatLngExpression, northEast:LatLngExpression);
	function extend(latlngOrBounds:ts.AnyOf5<LatLngTuple, LatLngLiteral, LatLng, LatLngBounds, LatLngBoundsLiteral>):LatLngBounds;
	function pad(bufferRatio:Float):LatLngBounds;
	function getCenter():LatLng;
	function getSouthWest():LatLng;
	function getNorthEast():LatLng;
	function getNorthWest():LatLng;
	function getSouthEast():LatLng;
	function getWest():Float;
	function getSouth():Float;
	function getEast():Float;
	function getNorth():Float;
	function contains(otherBoundsOrLatLng:ts.AnyOf5<LatLngTuple, LatLngLiteral, LatLng, LatLngBounds, LatLngBoundsLiteral>):Bool;
	function intersects(otherBounds:LatLngBoundsExpression):Bool;
	function overlaps(otherBounds:LatLngBoundsExpression):Bool;
	function toBBoxString():String;
	function equals(otherBounds:LatLngBoundsExpression, ?maxMargin:Float):Bool;
	function isValid():Bool;
	static var prototype : LatLngBounds;
}