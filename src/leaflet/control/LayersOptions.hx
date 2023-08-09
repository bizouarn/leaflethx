package leaflet.control;

typedef LayersOptions = {
	@:optional
	var collapsed : Bool;
	@:optional
	var autoZIndex : Bool;
	@:optional
	var hideSingleBase : Bool;
	/**
		Whether to sort the layers. When `false`, layers will keep the order in which they were added to the control.
	**/
	@:optional
	var sortLayers : Bool;
	/**
		A [compare function](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Array/sort)
		that will be used for sorting the layers, when `sortLayers` is `true`. The function receives both the
		[`L.Layer`](https://leafletjs.com/reference.html#layer) instances and their names, as in
		`sortFunction(layerA, layerB, nameA, nameB)`. By default, it sorts layers alphabetically by their name.
	**/
	@:optional
	dynamic function sortFunction(layerA:leaflet.Layer, layerB:leaflet.Layer, nameA:String, nameB:String):Float;
	@:optional
	var position : leaflet.ControlPosition;
};