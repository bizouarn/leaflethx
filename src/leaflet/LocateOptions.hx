package leaflet;

typedef LocateOptions = {
	@:optional
	var watch : Bool;
	@:optional
	var setView : Bool;
	@:optional
	var maxZoom : Float;
	@:optional
	var timeout : Float;
	@:optional
	var maximumAge : Float;
	@:optional
	var enableHighAccuracy : Bool;
};