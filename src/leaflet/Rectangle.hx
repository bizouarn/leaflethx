package leaflet;

@:jsRequire("leaflet", "Rectangle") extern class Rectangle<P> extends Polygon<P> {
	function new(latLngBounds:LatLngBoundsExpression, ?options:PolylineOptions);
	function setBounds(latLngBounds:LatLngBoundsExpression):Rectangle<P>;
	function setLatLngs(latlngs:ts.AnyOf3<Array<LatLngExpression>, Array<Array<LatLngExpression>>, Array<Array<Array<LatLngExpression>>>>):Rectangle<P>;
	function addLatLng(latlng:ts.AnyOf4<LatLngTuple, LatLngLiteral, LatLng, Array<LatLngExpression>>, ?latlngs:Array<LatLng>):Rectangle<P>;
	function redraw():Rectangle<P>;
	function setStyle(style:PathOptions):Rectangle<P>;
	function bringToFront():Rectangle<P>;
	function bringToBack():Rectangle<P>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):Rectangle<P>;
	function remove():Rectangle<P>;
	function removeFrom(map:Map_):Rectangle<P>;
	function addInteractiveTarget(targetEl:js.html.Element):Rectangle<P>;
	function removeInteractiveTarget(targetEl:js.html.Element):Rectangle<P>;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):Rectangle<P>;
	function unbindPopup():Rectangle<P>;
	function openPopup(?latlng:LatLngExpression):Rectangle<P>;
	function closePopup():Rectangle<P>;
	function togglePopup():Rectangle<P>;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):Rectangle<P>;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):Rectangle<P>;
	function unbindTooltip():Rectangle<P>;
	function openTooltip(?latlng:LatLngExpression):Rectangle<P>;
	function closeTooltip():Rectangle<P>;
	function toggleTooltip():Rectangle<P>;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):Rectangle<P>;
	function onAdd(map:Map_):Rectangle<P>;
	function onRemove(map:Map_):Rectangle<P>;
	@:optional
	function beforeAdd(map:Map_):Rectangle<P>;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Rectangle<P> { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Rectangle<P>;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Rectangle<P> { })
	@:overload(function():Rectangle<P> { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Rectangle<P>;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Rectangle<P>;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Rectangle<P> { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Rectangle<P>;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Rectangle<P>;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Rectangle<P>;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Rectangle<P> { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Rectangle<P>;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Rectangle<P> { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Rectangle<P>;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Rectangle<P>;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Rectangle<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Rectangle<P> { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Rectangle<P>;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Rectangle<P>;
	static var prototype : Rectangle<Dynamic>;
}