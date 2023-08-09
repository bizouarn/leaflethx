package leaflet;

typedef BaseIconOptions = {
	@:optional
	var iconUrl : String;
	@:optional
	var iconRetinaUrl : String;
	@:optional
	var iconSize : PointExpression;
	@:optional
	var iconAnchor : PointExpression;
	@:optional
	var popupAnchor : PointExpression;
	@:optional
	var tooltipAnchor : PointExpression;
	@:optional
	var shadowUrl : String;
	@:optional
	var shadowRetinaUrl : String;
	@:optional
	var shadowSize : PointExpression;
	@:optional
	var shadowAnchor : PointExpression;
	@:optional
	var className : String;
	@:optional
	var pane : String;
	@:optional
	var attribution : String;
};