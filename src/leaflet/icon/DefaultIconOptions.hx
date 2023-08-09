package leaflet.icon;

typedef DefaultIconOptions = {
	@:optional
	var imagePath : String;
	@:optional
	var iconUrl : String;
	@:optional
	var iconRetinaUrl : String;
	@:optional
	var iconSize : leaflet.PointExpression;
	@:optional
	var iconAnchor : leaflet.PointExpression;
	@:optional
	var popupAnchor : leaflet.PointExpression;
	@:optional
	var tooltipAnchor : leaflet.PointExpression;
	@:optional
	var shadowUrl : String;
	@:optional
	var shadowRetinaUrl : String;
	@:optional
	var shadowSize : leaflet.PointExpression;
	@:optional
	var shadowAnchor : leaflet.PointExpression;
	@:optional
	var className : String;
	@:optional
	var pane : String;
	@:optional
	var attribution : String;
};