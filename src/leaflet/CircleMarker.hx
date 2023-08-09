package leaflet;

@:jsRequire("leaflet", "CircleMarker") extern class CircleMarker<P> extends Path {
	function new(latlng:LatLngExpression, ?options:CircleMarkerOptions);
	function toGeoJSON(?precision:ts.AnyOf2<Float, Bool>):geojson.Feature<geojson.Point, P>;
	function setLatLng(latLng:LatLngExpression):CircleMarker<P>;
	function getLatLng():LatLng;
	function setRadius(radius:Float):CircleMarker<P>;
	function getRadius():Float;
	function setStyle(options:CircleMarkerOptions):CircleMarker<P>;
	@:optional
	var feature : geojson.Feature<geojson.Point, P>;
	function redraw():CircleMarker<P>;
	function bringToFront():CircleMarker<P>;
	function bringToBack():CircleMarker<P>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):CircleMarker<P>;
	function remove():CircleMarker<P>;
	function removeFrom(map:Map_):CircleMarker<P>;
	function addInteractiveTarget(targetEl:js.html.Element):CircleMarker<P>;
	function removeInteractiveTarget(targetEl:js.html.Element):CircleMarker<P>;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):CircleMarker<P>;
	function unbindPopup():CircleMarker<P>;
	function openPopup(?latlng:LatLngExpression):CircleMarker<P>;
	function closePopup():CircleMarker<P>;
	function togglePopup():CircleMarker<P>;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):CircleMarker<P>;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):CircleMarker<P>;
	function unbindTooltip():CircleMarker<P>;
	function openTooltip(?latlng:LatLngExpression):CircleMarker<P>;
	function closeTooltip():CircleMarker<P>;
	function toggleTooltip():CircleMarker<P>;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):CircleMarker<P>;
	function onAdd(map:Map_):CircleMarker<P>;
	function onRemove(map:Map_):CircleMarker<P>;
	@:optional
	function beforeAdd(map:Map_):CircleMarker<P>;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):CircleMarker<P> { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):CircleMarker<P>;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):CircleMarker<P> { })
	@:overload(function():CircleMarker<P> { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):CircleMarker<P>;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):CircleMarker<P>;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):CircleMarker<P> { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):CircleMarker<P>;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):CircleMarker<P>;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):CircleMarker<P>;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):CircleMarker<P> { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):CircleMarker<P>;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):CircleMarker<P> { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):CircleMarker<P>;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():CircleMarker<P>;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):CircleMarker<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):CircleMarker<P> { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):CircleMarker<P>;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):CircleMarker<P>;
	static var prototype : CircleMarker<Dynamic>;
}