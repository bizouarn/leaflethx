package leaflet;

/**
	Extended LayerGroup that also has mouse events (propagated from
	members of the group) and a shared bindPopup method.
**/
@:jsRequire("leaflet", "FeatureGroup") extern class FeatureGroup<P> extends LayerGroup<P> {
	/**
		Adds the given layer to the group.
	**/
	function addLayer(layer:Layer):FeatureGroup<P>;
	/**
		Removes the layer with the given internal ID or the given layer from the group.
	**/
	function removeLayer(layer:ts.AnyOf2<Float, Layer>):FeatureGroup<P>;
	/**
		Sets the given path options to each layer of the group that has a setStyle method.
	**/
	function setStyle(style:PathOptions):FeatureGroup<P>;
	/**
		Brings the layer group to the top of all other layers
	**/
	function bringToFront():FeatureGroup<P>;
	/**
		Brings the layer group to the top [sic] of all other layers
	**/
	function bringToBack():FeatureGroup<P>;
	/**
		Returns the LatLngBounds of the Feature Group (created from
		bounds and coordinates of its children).
	**/
	function getBounds():LatLngBounds;
	/**
		Removes all the layers from the group.
	**/
	function clearLayers():FeatureGroup<P>;
	/**
		Calls methodName on every layer contained in this group, passing any additional parameters.
		Has no effect if the layers contained do not implement methodName.
	**/
	function invoke(methodName:String, params:haxe.extern.Rest<Dynamic>):FeatureGroup<P>;
	/**
		Iterates over the layers of the group,
		optionally specifying context of the iterator function.
	**/
	function eachLayer(fn:(layer:Layer) -> Void, ?context:Dynamic):FeatureGroup<P>;
	/**
		Calls setZIndex on every layer contained in this group, passing the z-index.
	**/
	function setZIndex(zIndex:Float):FeatureGroup<P>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):FeatureGroup<P>;
	function remove():FeatureGroup<P>;
	function removeFrom(map:Map_):FeatureGroup<P>;
	function addInteractiveTarget(targetEl:js.html.Element):FeatureGroup<P>;
	function removeInteractiveTarget(targetEl:js.html.Element):FeatureGroup<P>;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):FeatureGroup<P>;
	function unbindPopup():FeatureGroup<P>;
	function openPopup(?latlng:LatLngExpression):FeatureGroup<P>;
	function closePopup():FeatureGroup<P>;
	function togglePopup():FeatureGroup<P>;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):FeatureGroup<P>;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):FeatureGroup<P>;
	function unbindTooltip():FeatureGroup<P>;
	function openTooltip(?latlng:LatLngExpression):FeatureGroup<P>;
	function closeTooltip():FeatureGroup<P>;
	function toggleTooltip():FeatureGroup<P>;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):FeatureGroup<P>;
	function onAdd(map:Map_):FeatureGroup<P>;
	function onRemove(map:Map_):FeatureGroup<P>;
	@:optional
	function beforeAdd(map:Map_):FeatureGroup<P>;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):FeatureGroup<P> { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):FeatureGroup<P>;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):FeatureGroup<P> { })
	@:overload(function():FeatureGroup<P> { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):FeatureGroup<P>;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):FeatureGroup<P>;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):FeatureGroup<P> { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):FeatureGroup<P>;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):FeatureGroup<P>;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):FeatureGroup<P>;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):FeatureGroup<P> { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):FeatureGroup<P>;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):FeatureGroup<P> { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):FeatureGroup<P>;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():FeatureGroup<P>;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):FeatureGroup<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):FeatureGroup<P> { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):FeatureGroup<P>;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):FeatureGroup<P>;
	static var prototype : FeatureGroup<Dynamic>;
}