package leaflet;

typedef DivOverlayOptions = {
	@:optional
	var offset : PointExpression;
	@:optional
	var className : String;
	@:optional
	var pane : String;
	@:optional
	var interactive : Bool;
	@:optional
	var content : ts.AnyOf4<String, js.html.Element, (layer:Layer) -> String, (layer:Layer) -> js.html.Element>;
};