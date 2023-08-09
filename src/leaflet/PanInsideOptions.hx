package leaflet;

typedef PanInsideOptions = {
	@:optional
	var paddingTopLeft : PointExpression;
	@:optional
	var paddingBottomRight : PointExpression;
	@:optional
	var padding : PointExpression;
	@:optional
	var animate : Bool;
	@:optional
	var duration : Float;
	@:optional
	var easeLinearity : Float;
	@:optional
	var noMoveStart : Bool;
};