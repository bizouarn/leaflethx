package leaflet;

/**
	Represents a GeoJSON object or an array of GeoJSON objects.
	Allows you to parse GeoJSON data and display it on the map. Extends FeatureGroup.
**/
@:jsRequire("leaflet", "GeoJSON") extern class GeoJSON<P, G> extends FeatureGroup<P> {
	function new(?geojson:geojson.GeoJsonObject, ?options:GeoJSONOptions<P, G>);
	/**
		Adds a GeoJSON object to the layer.
	**/
	function addData(data:geojson.GeoJsonObject):GeoJSON<P, G>;
	/**
		Resets the given vector layer's style to the original GeoJSON style,
		useful for resetting style after hover events.
	**/
	function resetStyle(?layer:Layer):GeoJSON<P, G>;
	/**
		Same as FeatureGroup's setStyle method, but style-functions are also
		allowed here to set the style according to the feature.
	**/
	function setStyle(style:ts.AnyOf2<PathOptions, StyleFunction<P>>):GeoJSON<P, G>;
	/**
		Adds the given layer to the group.
	**/
	function addLayer(layer:Layer):GeoJSON<P, G>;
	/**
		Removes the layer with the given internal ID or the given layer from the group.
	**/
	function removeLayer(layer:ts.AnyOf2<Float, Layer>):GeoJSON<P, G>;
	/**
		Brings the layer group to the top of all other layers
	**/
	function bringToFront():GeoJSON<P, G>;
	/**
		Brings the layer group to the top [sic] of all other layers
	**/
	function bringToBack():GeoJSON<P, G>;
	/**
		Removes all the layers from the group.
	**/
	function clearLayers():GeoJSON<P, G>;
	/**
		Calls methodName on every layer contained in this group, passing any additional parameters.
		Has no effect if the layers contained do not implement methodName.
	**/
	function invoke(methodName:String, params:haxe.extern.Rest<Dynamic>):GeoJSON<P, G>;
	/**
		Iterates over the layers of the group,
		optionally specifying context of the iterator function.
	**/
	function eachLayer(fn:(layer:Layer) -> Void, ?context:Dynamic):GeoJSON<P, G>;
	/**
		Calls setZIndex on every layer contained in this group, passing the z-index.
	**/
	function setZIndex(zIndex:Float):GeoJSON<P, G>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):GeoJSON<P, G>;
	function remove():GeoJSON<P, G>;
	function removeFrom(map:Map_):GeoJSON<P, G>;
	function addInteractiveTarget(targetEl:js.html.Element):GeoJSON<P, G>;
	function removeInteractiveTarget(targetEl:js.html.Element):GeoJSON<P, G>;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):GeoJSON<P, G>;
	function unbindPopup():GeoJSON<P, G>;
	function openPopup(?latlng:LatLngExpression):GeoJSON<P, G>;
	function closePopup():GeoJSON<P, G>;
	function togglePopup():GeoJSON<P, G>;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):GeoJSON<P, G>;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):GeoJSON<P, G>;
	function unbindTooltip():GeoJSON<P, G>;
	function openTooltip(?latlng:LatLngExpression):GeoJSON<P, G>;
	function closeTooltip():GeoJSON<P, G>;
	function toggleTooltip():GeoJSON<P, G>;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):GeoJSON<P, G>;
	function onAdd(map:Map_):GeoJSON<P, G>;
	function onRemove(map:Map_):GeoJSON<P, G>;
	@:optional
	function beforeAdd(map:Map_):GeoJSON<P, G>;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):GeoJSON<P, G> { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):GeoJSON<P, G>;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):GeoJSON<P, G> { })
	@:overload(function():GeoJSON<P, G> { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):GeoJSON<P, G>;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):GeoJSON<P, G>;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):GeoJSON<P, G> { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):GeoJSON<P, G>;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):GeoJSON<P, G>;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):GeoJSON<P, G>;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):GeoJSON<P, G> { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):GeoJSON<P, G>;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):GeoJSON<P, G> { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):GeoJSON<P, G>;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():GeoJSON<P, G>;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GeoJSON<P, G> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):GeoJSON<P, G> { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):GeoJSON<P, G>;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):GeoJSON<P, G>;
	static var prototype : GeoJSON<Dynamic, Dynamic>;
	/**
		Convert layer into GeoJSON feature
	**/
	static function getFeature<P, G>(layer:Layer, newGeometry:ts.AnyOf2<geojson.Feature<G, P>, G>):geojson.Feature<G, P>;
	/**
		Creates a Layer from a given GeoJSON feature. Can use a custom pointToLayer
		and/or coordsToLatLng functions if provided as options.
	**/
	static function geometryToLayer<P, G>(featureData:geojson.Feature<G, P>, ?options:GeoJSONOptions<P, G>):Layer;
	/**
		Creates a LatLng object from an array of 2 numbers (longitude, latitude) or
		3 numbers (longitude, latitude, altitude) used in GeoJSON for points.
	**/
	static function coordsToLatLng(coords:ts.AnyOf2<ts.Tuple3<Float, Float, Float>, ts.Tuple2<Float, Float>>):LatLng;
	/**
		Creates a multidimensional array of LatLngs from a GeoJSON coordinates array.
		levelsDeep specifies the nesting level (0 is for an array of points, 1 for an array of
		arrays of points, etc., 0 by default).
		Can use a custom coordsToLatLng function.
	**/
	static function coordsToLatLngs(coords:Array<Dynamic>, ?levelsDeep:Float, ?coordsToLatLng:(coords:ts.AnyOf2<ts.Tuple3<Float, Float, Float>, ts.Tuple2<Float, Float>>) -> LatLng):Array<Dynamic>;
	/**
		Reverse of coordsToLatLng
	**/
	static function latLngToCoords(latlng:LatLng):ts.AnyOf2<ts.Tuple3<Float, Float, Float>, ts.Tuple2<Float, Float>>;
	/**
		Reverse of coordsToLatLngs closed determines whether the first point should be
		appended to the end of the array to close the feature, only used when levelsDeep is 0.
		False by default.
	**/
	static function latLngsToCoords(latlngs:Array<Dynamic>, ?levelsDeep:Float, ?closed:Bool):Array<Dynamic>;
	/**
		Normalize GeoJSON geometries/features into GeoJSON features.
	**/
	static function asFeature<P, G>(geojson:ts.AnyOf2<geojson.Feature<G, P>, G>):geojson.Feature<G, P>;
}