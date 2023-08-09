package leaflet;

@:jsRequire("leaflet", "DivIcon") extern class DivIcon extends Icon<DivIconOptions> {
	function new(?options:DivIconOptions);
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):DivIcon;
	function remove():DivIcon;
	function removeFrom(map:Map_):DivIcon;
	function addInteractiveTarget(targetEl:js.html.Element):DivIcon;
	function removeInteractiveTarget(targetEl:js.html.Element):DivIcon;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):DivIcon;
	function unbindPopup():DivIcon;
	function openPopup(?latlng:LatLngExpression):DivIcon;
	function closePopup():DivIcon;
	function togglePopup():DivIcon;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):DivIcon;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):DivIcon;
	function unbindTooltip():DivIcon;
	function openTooltip(?latlng:LatLngExpression):DivIcon;
	function closeTooltip():DivIcon;
	function toggleTooltip():DivIcon;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):DivIcon;
	function onAdd(map:Map_):DivIcon;
	function onRemove(map:Map_):DivIcon;
	@:optional
	function beforeAdd(map:Map_):DivIcon;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):DivIcon { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):DivIcon;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):DivIcon { })
	@:overload(function():DivIcon { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):DivIcon;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):DivIcon;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):DivIcon { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):DivIcon;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):DivIcon;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):DivIcon;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):DivIcon { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):DivIcon;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):DivIcon { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):DivIcon;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():DivIcon;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivIcon { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):DivIcon { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):DivIcon;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):DivIcon;
	static var prototype : DivIcon;
}