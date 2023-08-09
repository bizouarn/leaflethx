package leaflet;

/**
	Used to group several layers and handle them as one.
	If you add it to the map, any layers added or removed from the group will be
	added/removed on the map as well. Extends Layer.
**/
@:jsRequire("leaflet", "LayerGroup") extern class LayerGroup<P> extends Layer {
	function new(?layers:Array<Layer>, ?options:LayerOptions);
	function toMultiPoint(?precision:Float):geojson.Feature<geojson.MultiPoint, P>;
	/**
		Returns a GeoJSON representation of the layer group (as a GeoJSON GeometryCollection, GeoJSONFeatureCollection or Multipoint).
	**/
	function toGeoJSON(?precision:ts.AnyOf2<Float, Bool>):ts.AnyOf3<geojson.Feature<geojson.MultiPoint, P>, geojson.FeatureCollection<geojson.Geometry, P>, geojson.GeometryCollection<geojson.Geometry>>;
	/**
		Adds the given layer to the group.
	**/
	function addLayer(layer:Layer):LayerGroup<P>;
	/**
		Removes the layer with the given internal ID or the given layer from the group.
	**/
	function removeLayer(layer:ts.AnyOf2<Float, Layer>):LayerGroup<P>;
	/**
		Returns true if the given layer is currently added to the group.
	**/
	function hasLayer(layer:Layer):Bool;
	/**
		Removes all the layers from the group.
	**/
	function clearLayers():LayerGroup<P>;
	/**
		Calls methodName on every layer contained in this group, passing any additional parameters.
		Has no effect if the layers contained do not implement methodName.
	**/
	function invoke(methodName:String, params:haxe.extern.Rest<Dynamic>):LayerGroup<P>;
	/**
		Iterates over the layers of the group,
		optionally specifying context of the iterator function.
	**/
	function eachLayer(fn:(layer:Layer) -> Void, ?context:Dynamic):LayerGroup<P>;
	/**
		Returns the layer with the given internal ID.
	**/
	function getLayer(id:Float):Null<Layer>;
	/**
		Returns an array of all the layers added to the group.
	**/
	function getLayers():Array<Layer>;
	/**
		Calls setZIndex on every layer contained in this group, passing the z-index.
	**/
	function setZIndex(zIndex:Float):LayerGroup<P>;
	/**
		Returns the internal ID for a layer
	**/
	function getLayerId(layer:Layer):Float;
	@:optional
	var feature : ts.AnyOf3<geojson.Feature<geojson.MultiPoint, P>, geojson.FeatureCollection<geojson.Geometry, P>, geojson.GeometryCollection<geojson.Geometry>>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):LayerGroup<P>;
	function remove():LayerGroup<P>;
	function removeFrom(map:Map_):LayerGroup<P>;
	function addInteractiveTarget(targetEl:js.html.Element):LayerGroup<P>;
	function removeInteractiveTarget(targetEl:js.html.Element):LayerGroup<P>;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):LayerGroup<P>;
	function unbindPopup():LayerGroup<P>;
	function openPopup(?latlng:LatLngExpression):LayerGroup<P>;
	function closePopup():LayerGroup<P>;
	function togglePopup():LayerGroup<P>;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):LayerGroup<P>;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):LayerGroup<P>;
	function unbindTooltip():LayerGroup<P>;
	function openTooltip(?latlng:LatLngExpression):LayerGroup<P>;
	function closeTooltip():LayerGroup<P>;
	function toggleTooltip():LayerGroup<P>;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):LayerGroup<P>;
	function onAdd(map:Map_):LayerGroup<P>;
	function onRemove(map:Map_):LayerGroup<P>;
	@:optional
	function beforeAdd(map:Map_):LayerGroup<P>;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):LayerGroup<P> { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):LayerGroup<P>;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):LayerGroup<P> { })
	@:overload(function():LayerGroup<P> { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):LayerGroup<P>;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):LayerGroup<P>;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):LayerGroup<P> { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):LayerGroup<P>;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):LayerGroup<P>;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):LayerGroup<P>;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):LayerGroup<P> { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):LayerGroup<P>;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):LayerGroup<P> { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):LayerGroup<P>;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():LayerGroup<P>;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):LayerGroup<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):LayerGroup<P> { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):LayerGroup<P>;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):LayerGroup<P>;
	static var prototype : LayerGroup<Dynamic>;
}