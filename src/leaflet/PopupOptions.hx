package leaflet;

typedef PopupOptions = {
	@:optional
	var maxWidth : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var keepInView : Bool;
	@:optional
	var closeButton : Bool;
	@:optional
	var autoPan : Bool;
	@:optional
	var autoPanPaddingTopLeft : PointExpression;
	@:optional
	var autoPanPaddingBottomRight : PointExpression;
	@:optional
	var autoPanPadding : PointExpression;
	@:optional
	var autoClose : Bool;
	@:optional
	var closeOnClick : Bool;
	@:optional
	var closeOnEscapeKey : Bool;
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