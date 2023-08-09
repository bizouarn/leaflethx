package leaflet;

typedef WMSOptions = {
	@:optional
	var layers : String;
	@:optional
	var styles : String;
	@:optional
	var format : String;
	@:optional
	var transparent : Bool;
	@:optional
	var version : String;
	@:optional
	var crs : CRS;
	@:optional
	var uppercase : Bool;
	@:optional
	var id : String;
	@:optional
	var accessToken : String;
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
	var subdomains : ts.AnyOf2<String, Array<String>>;
	@:optional
	var errorTileUrl : String;
	@:optional
	var zoomOffset : Float;
	@:optional
	var tms : Bool;
	@:optional
	var zoomReverse : Bool;
	@:optional
	var detectRetina : Bool;
	@:optional
	var crossOrigin : ts.AnyOf2<Bool, String>;
	@:optional
	var referrerPolicy : ts.AnyOf2<Bool, String>;
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