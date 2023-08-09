package leaflet;

@:jsRequire("leaflet", "LatLng") extern class LatLng {
	function new(latitude:Float, longitude:Float, ?altitude:Float);
	function equals(otherLatLng:LatLngExpression, ?maxMargin:Float):Bool;
	function toString():String;
	function distanceTo(otherLatLng:LatLngExpression):Float;
	function wrap():LatLng;
	function toBounds(sizeInMeters:Float):LatLngBounds;
	function clone():LatLng;
	var lat : Float;
	var lng : Float;
	@:optional
	var alt : Float;
	static var prototype : LatLng;
}