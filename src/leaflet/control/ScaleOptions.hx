package leaflet.control;

typedef ScaleOptions = {
	@:optional
	var maxWidth : Float;
	@:optional
	var metric : Bool;
	@:optional
	var imperial : Bool;
	@:optional
	var updateWhenIdle : Bool;
	@:optional
	var position : leaflet.ControlPosition;
};