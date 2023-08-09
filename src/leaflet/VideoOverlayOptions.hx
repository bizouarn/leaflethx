package leaflet;

typedef VideoOverlayOptions = {
	/**
		Whether the video starts playing automatically when loaded.
	**/
	@:optional
	var autoplay : Bool;
	/**
		Whether the video will loop back to the beginning when played.
	**/
	@:optional
	var loop : Bool;
	/**
		Whether the video will save aspect ratio after the projection. Relevant for supported browsers. See
		[browser compatibility](https://developer.mozilla.org/en-US/docs/Web/CSS/object-fit)
	**/
	@:optional
	var keepAspectRatio : Bool;
	/**
		Whether the video starts on mute when loaded.
	**/
	@:optional
	var muted : Bool;
	@:optional
	var playsInline : Bool;
	@:optional
	var opacity : Float;
	@:optional
	var alt : String;
	@:optional
	var interactive : Bool;
	@:optional
	var crossOrigin : ts.AnyOf2<Bool, String>;
	@:optional
	var errorOverlayUrl : String;
	@:optional
	var zIndex : Float;
	@:optional
	var className : String;
	@:optional
	var bubblingMouseEvents : Bool;
	@:optional
	var pane : String;
	@:optional
	var attribution : String;
};