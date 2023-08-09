package leaflet;

typedef TooltipOptions = {
	@:optional
	var pane : String;
	@:optional
	var offset : PointExpression;
	@:optional
	var direction : Direction;
	@:optional
	var permanent : Bool;
	@:optional
	var sticky : Bool;
	@:optional
	var opacity : Float;
	@:optional
	var className : String;
	@:optional
	var interactive : Bool;
	@:optional
	var content : ts.AnyOf4<String, js.html.Element, (layer:Layer) -> String, (layer:Layer) -> js.html.Element>;
};