package leaflet;

@:jsRequire("leaflet", "Popup") extern class Popup extends DivOverlay {
	@:overload(function(?options:PopupOptions, ?source:Layer):Popup { })
	function new(latlng:LatLngExpression, ?options:TooltipOptions);
	function openOn(map:Map_):Popup;
	function setLatLng(latlng:LatLngExpression):Popup;
	function setContent(htmlContent:ts.AnyOf3<String, js.html.Element, (source:Layer) -> ts.AnyOf2<String, js.html.Element>>):Popup;
	function bringToFront():Popup;
	function bringToBack():Popup;
	function toggle(?layer:Layer):Popup;
	function close():Popup;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):Popup;
	function remove():Popup;
	function removeFrom(map:Map_):Popup;
	function addInteractiveTarget(targetEl:js.html.Element):Popup;
	function removeInteractiveTarget(targetEl:js.html.Element):Popup;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):Popup;
	function unbindPopup():Popup;
	function openPopup(?latlng:LatLngExpression):Popup;
	function closePopup():Popup;
	function togglePopup():Popup;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):Popup;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):Popup;
	function unbindTooltip():Popup;
	function openTooltip(?latlng:LatLngExpression):Popup;
	function closeTooltip():Popup;
	function toggleTooltip():Popup;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):Popup;
	function onAdd(map:Map_):Popup;
	function onRemove(map:Map_):Popup;
	@:optional
	function beforeAdd(map:Map_):Popup;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Popup { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Popup;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Popup { })
	@:overload(function():Popup { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Popup;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Popup;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Popup { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Popup;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Popup;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Popup;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Popup { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Popup;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Popup { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Popup;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Popup;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Popup { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Popup { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Popup;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Popup;
	static var prototype : Popup;
}