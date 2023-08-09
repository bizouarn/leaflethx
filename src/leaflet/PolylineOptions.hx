package leaflet;

typedef PolylineOptions = {
	@:optional
	var smoothFactor : Float;
	@:optional
	var noClip : Bool;
	@:optional
	var stroke : Bool;
	@:optional
	var color : String;
	@:optional
	var weight : Float;
	@:optional
	var opacity : Float;
	@:optional
	var lineCap : LineCapShape;
	@:optional
	var lineJoin : LineJoinShape;
	@:optional
	var dashArray : ts.AnyOf2<String, Array<Float>>;
	@:optional
	var dashOffset : String;
	@:optional
	var fill : Bool;
	@:optional
	var fillColor : String;
	@:optional
	var fillOpacity : Float;
	@:optional
	var fillRule : FillRule;
	@:optional
	var renderer : Renderer;
	@:optional
	var className : String;
	@:optional
	var interactive : Bool;
	@:optional
	var bubblingMouseEvents : Bool;
	@:optional
	var pane : String;
	@:optional
	var attribution : String;
};