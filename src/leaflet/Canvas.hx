package leaflet;

@:jsRequire("leaflet", "Canvas") extern class Canvas extends Renderer {
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):Canvas;
	function remove():Canvas;
	function removeFrom(map:Map_):Canvas;
	function addInteractiveTarget(targetEl:js.html.Element):Canvas;
	function removeInteractiveTarget(targetEl:js.html.Element):Canvas;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):Canvas;
	function unbindPopup():Canvas;
	function openPopup(?latlng:LatLngExpression):Canvas;
	function closePopup():Canvas;
	function togglePopup():Canvas;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):Canvas;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):Canvas;
	function unbindTooltip():Canvas;
	function openTooltip(?latlng:LatLngExpression):Canvas;
	function closeTooltip():Canvas;
	function toggleTooltip():Canvas;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):Canvas;
	function onAdd(map:Map_):Canvas;
	function onRemove(map:Map_):Canvas;
	@:optional
	function beforeAdd(map:Map_):Canvas;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Canvas { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Canvas;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Canvas { })
	@:overload(function():Canvas { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Canvas;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Canvas;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Canvas { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Canvas;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Canvas;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Canvas;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Canvas { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Canvas;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Canvas { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Canvas;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Canvas;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Canvas { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Canvas { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Canvas;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Canvas;
	static var prototype : Canvas;
}