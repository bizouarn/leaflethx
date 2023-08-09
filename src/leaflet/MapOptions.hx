package leaflet;

typedef MapOptions = {
	@:optional
	var preferCanvas : Bool;
	@:optional
	var attributionControl : Bool;
	@:optional
	var zoomControl : Bool;
	@:optional
	var closePopupOnClick : Bool;
	@:optional
	var zoomSnap : Float;
	@:optional
	var zoomDelta : Float;
	@:optional
	var trackResize : Bool;
	@:optional
	var boxZoom : Bool;
	@:optional
	var doubleClickZoom : Zoom;
	@:optional
	var dragging : Bool;
	@:optional
	var crs : CRS;
	@:optional
	var center : LatLngExpression;
	@:optional
	var zoom : Float;
	@:optional
	var minZoom : Float;
	@:optional
	var maxZoom : Float;
	@:optional
	var layers : Array<Layer>;
	@:optional
	var maxBounds : LatLngBoundsExpression;
	@:optional
	var renderer : Renderer;
	@:optional
	var fadeAnimation : Bool;
	@:optional
	var markerZoomAnimation : Bool;
	@:optional
	var transform3DLimit : Float;
	@:optional
	var zoomAnimation : Bool;
	@:optional
	var zoomAnimationThreshold : Float;
	@:optional
	var inertia : Bool;
	@:optional
	var inertiaDeceleration : Float;
	@:optional
	var inertiaMaxSpeed : Float;
	@:optional
	var easeLinearity : Float;
	@:optional
	var worldCopyJump : Bool;
	@:optional
	var maxBoundsViscosity : Float;
	@:optional
	var keyboard : Bool;
	@:optional
	var keyboardPanDelta : Float;
	@:optional
	var scrollWheelZoom : Zoom;
	@:optional
	var wheelDebounceTime : Float;
	@:optional
	var wheelPxPerZoomLevel : Float;
	@:optional
	var tap : Bool;
	@:optional
	var tapTolerance : Float;
	@:optional
	var touchZoom : Zoom;
	@:optional
	var bounceAtZoomLimits : Bool;
};