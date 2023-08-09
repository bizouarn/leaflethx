package leaflet;

typedef ImageOverlayOptions = {
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