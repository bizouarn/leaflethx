package leaflet;

@:jsRequire("leaflet", "Circle") extern class Circle<P> extends CircleMarker<P> {
	@:overload(function(latlng:LatLngExpression, radius:Float, ?options:CircleOptions):Circle<P> { })
	function new(latlng:LatLngExpression, ?options:CircleOptions);
	function toGeoJSON(?precision:ts.AnyOf2<Float, Bool>):Dynamic;
	function getBounds():LatLngBounds;
	function setRadius(radius:Float):Circle<P>;
	function setStyle(style:PathOptions):Circle<P>;
	function setLatLng(latLng:LatLngExpression):Circle<P>;
	function redraw():Circle<P>;
	function bringToFront():Circle<P>;
	function bringToBack():Circle<P>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):Circle<P>;
	function remove():Circle<P>;
	function removeFrom(map:Map_):Circle<P>;
	function addInteractiveTarget(targetEl:js.html.Element):Circle<P>;
	function removeInteractiveTarget(targetEl:js.html.Element):Circle<P>;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):Circle<P>;
	function unbindPopup():Circle<P>;
	function openPopup(?latlng:LatLngExpression):Circle<P>;
	function closePopup():Circle<P>;
	function togglePopup():Circle<P>;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):Circle<P>;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):Circle<P>;
	function unbindTooltip():Circle<P>;
	function openTooltip(?latlng:LatLngExpression):Circle<P>;
	function closeTooltip():Circle<P>;
	function toggleTooltip():Circle<P>;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):Circle<P>;
	function onAdd(map:Map_):Circle<P>;
	function onRemove(map:Map_):Circle<P>;
	@:optional
	function beforeAdd(map:Map_):Circle<P>;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Circle<P> { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Circle<P>;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Circle<P> { })
	@:overload(function():Circle<P> { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Circle<P>;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Circle<P>;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Circle<P> { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Circle<P>;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Circle<P>;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Circle<P>;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Circle<P> { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Circle<P>;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Circle<P> { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Circle<P>;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Circle<P>;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Circle<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Circle<P> { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Circle<P>;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Circle<P>;
	static var prototype : Circle<Dynamic>;
}