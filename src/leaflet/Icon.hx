package leaflet;

@:jsRequire("leaflet", "Icon") extern class Icon<T> extends Layer {
	function new(options:T);
	function createIcon(?oldIcon:js.html.Element):js.html.Element;
	function createShadow(?oldIcon:js.html.Element):js.html.Element;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):Icon<T>;
	function remove():Icon<T>;
	function removeFrom(map:Map_):Icon<T>;
	function addInteractiveTarget(targetEl:js.html.Element):Icon<T>;
	function removeInteractiveTarget(targetEl:js.html.Element):Icon<T>;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):Icon<T>;
	function unbindPopup():Icon<T>;
	function openPopup(?latlng:LatLngExpression):Icon<T>;
	function closePopup():Icon<T>;
	function togglePopup():Icon<T>;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):Icon<T>;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):Icon<T>;
	function unbindTooltip():Icon<T>;
	function openTooltip(?latlng:LatLngExpression):Icon<T>;
	function closeTooltip():Icon<T>;
	function toggleTooltip():Icon<T>;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):Icon<T>;
	function onAdd(map:Map_):Icon<T>;
	function onRemove(map:Map_):Icon<T>;
	@:optional
	function beforeAdd(map:Map_):Icon<T>;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Icon<T> { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Icon<T>;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Icon<T> { })
	@:overload(function():Icon<T> { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Icon<T>;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Icon<T>;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Icon<T> { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Icon<T>;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Icon<T>;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Icon<T>;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Icon<T> { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Icon<T>;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Icon<T> { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Icon<T>;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Icon<T>;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Icon<T> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Icon<T> { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Icon<T>;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Icon<T>;
	static var prototype : Icon<Dynamic>;
}