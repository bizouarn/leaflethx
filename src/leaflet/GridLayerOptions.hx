package leaflet;

typedef GridLayerOptions = {
	@:optional
	var tileSize : ts.AnyOf2<Float, Point>;
	@:optional
	var opacity : Float;
	@:optional
	var updateWhenIdle : Bool;
	@:optional
	var updateWhenZooming : Bool;
	@:optional
	var updateInterval : Float;
	@:optional
	var zIndex : Float;
	@:optional
	var bounds : LatLngBoundsExpression;
	@:optional
	var minZoom : Float;
	@:optional
	var maxZoom : Float;
	/**
		Maximum zoom number the tile source has available. If it is specified, the tiles on all zoom levels higher than
		`maxNativeZoom` will be loaded from `maxNativeZoom` level and auto-scaled.
	**/
	@:optional
	var maxNativeZoom : Float;
	/**
		Minimum zoom number the tile source has available. If it is specified, the tiles on all zoom levels lower than
		`minNativeZoom` will be loaded from `minNativeZoom` level and auto-scaled.
	**/
	@:optional
	var minNativeZoom : Float;
	@:optional
	var noWrap : Bool;
	@:optional
	var pane : String;
	@:optional
	var className : String;
	@:optional
	var keepBuffer : Float;
	@:optional
	var attribution : String;
};