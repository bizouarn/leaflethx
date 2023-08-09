package leaflet;

typedef FitBoundsOptions = {
	@:optional
	var paddingTopLeft : PointExpression;
	@:optional
	var paddingBottomRight : PointExpression;
	@:optional
	var padding : PointExpression;
	@:optional
	var maxZoom : Float;
	@:optional
	var animate : Bool;
	@:optional
	var duration : Float;
	@:optional
	var easeLinearity : Float;
	@:optional
	var noMoveStart : Bool;
};