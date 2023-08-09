package leaflet;

@:jsRequire("leaflet", "Path") extern class Path extends Layer {
	function redraw():Path;
	function setStyle(style:PathOptions):Path;
	function bringToFront():Path;
	function bringToBack():Path;
	function getElement():Null<js.html.DOMElement>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):Path;
	function remove():Path;
	function removeFrom(map:Map_):Path;
	function addInteractiveTarget(targetEl:js.html.Element):Path;
	function removeInteractiveTarget(targetEl:js.html.Element):Path;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):Path;
	function unbindPopup():Path;
	function openPopup(?latlng:LatLngExpression):Path;
	function closePopup():Path;
	function togglePopup():Path;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):Path;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):Path;
	function unbindTooltip():Path;
	function openTooltip(?latlng:LatLngExpression):Path;
	function closeTooltip():Path;
	function toggleTooltip():Path;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):Path;
	function onAdd(map:Map_):Path;
	function onRemove(map:Map_):Path;
	@:optional
	function beforeAdd(map:Map_):Path;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Path { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Path;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Path { })
	@:overload(function():Path { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Path;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Path;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Path { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Path;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Path;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Path;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Path { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Path;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Path { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Path;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Path;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Path { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Path { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Path;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Path;
	static var prototype : Path;
}