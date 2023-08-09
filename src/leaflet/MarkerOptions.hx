package leaflet;

typedef MarkerOptions = {
	@:optional
	var icon : ts.AnyOf2<Icon<IconOptions>, DivIcon>;
	/**
		Whether the marker is draggable with mouse/touch or not.
	**/
	@:optional
	var draggable : Bool;
	/**
		Whether the marker can be tabbed to with a keyboard and clicked by pressing enter.
	**/
	@:optional
	var keyboard : Bool;
	/**
		Text for the browser tooltip that appear on marker hover (no tooltip by default).
	**/
	@:optional
	var title : String;
	/**
		Text for the `alt` attribute of the icon image (useful for accessibility).
	**/
	@:optional
	var alt : String;
	/**
		Option for putting the marker on top of all others (or below).
	**/
	@:optional
	var zIndexOffset : Float;
	/**
		The opacity of the marker.
	**/
	@:optional
	var opacity : Float;
	/**
		If `true`, the marker will get on top of others when you hover the mouse over it.
	**/
	@:optional
	var riseOnHover : Bool;
	/**
		The z-index offset used for the `riseOnHover` feature.
	**/
	@:optional
	var riseOffset : Float;
	/**
		`Map pane` where the markers shadow will be added.
	**/
	@:optional
	var shadowPane : String;
	/**
		Whether to pan the map when dragging this marker near its edge or not.
	**/
	@:optional
	var autoPan : Bool;
	/**
		Distance (in pixels to the left/right and to the top/bottom) of the map edge to start panning the map.
	**/
	@:optional
	var autoPanPadding : PointExpression;
	/**
		Number of pixels the map should pan by.
	**/
	@:optional
	var autoPanSpeed : Float;
	@:optional
	var autoPanOnFocus : Bool;
	@:optional
	var interactive : Bool;
	@:optional
	var bubblingMouseEvents : Bool;
	@:optional
	var pane : String;
	@:optional
	var attribution : String;
};