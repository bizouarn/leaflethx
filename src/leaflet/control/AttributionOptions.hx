package leaflet.control;

typedef AttributionOptions = {
	@:optional
	var prefix : ts.AnyOf2<String, Bool>;
	@:optional
	var position : leaflet.ControlPosition;
};