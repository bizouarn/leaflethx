package leaflet;

@:jsRequire("leaflet", "Tooltip") extern class Tooltip extends DivOverlay {
	@:overload(function(?options:TooltipOptions, ?source:Layer):Tooltip { })
	function new(latlng:LatLngExpression, ?options:TooltipOptions);
	function setOpacity(val:Float):Void;
	function setLatLng(latlng:LatLngExpression):Tooltip;
	function setContent(htmlContent:ts.AnyOf3<String, js.html.Element, (source:Layer) -> ts.AnyOf2<String, js.html.Element>>):Tooltip;
	function bringToFront():Tooltip;
	function bringToBack():Tooltip;
	function openOn(map:Map_):Tooltip;
	function toggle(?layer:Layer):Tooltip;
	function close():Tooltip;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):Tooltip;
	function remove():Tooltip;
	function removeFrom(map:Map_):Tooltip;
	function addInteractiveTarget(targetEl:js.html.Element):Tooltip;
	function removeInteractiveTarget(targetEl:js.html.Element):Tooltip;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):Tooltip;
	function unbindPopup():Tooltip;
	function openPopup(?latlng:LatLngExpression):Tooltip;
	function closePopup():Tooltip;
	function togglePopup():Tooltip;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):Tooltip;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):Tooltip;
	function unbindTooltip():Tooltip;
	function openTooltip(?latlng:LatLngExpression):Tooltip;
	function closeTooltip():Tooltip;
	function toggleTooltip():Tooltip;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):Tooltip;
	function onAdd(map:Map_):Tooltip;
	function onRemove(map:Map_):Tooltip;
	@:optional
	function beforeAdd(map:Map_):Tooltip;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Tooltip { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Tooltip;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Tooltip { })
	@:overload(function():Tooltip { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Tooltip;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Tooltip;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Tooltip { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Tooltip;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Tooltip;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Tooltip;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Tooltip { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Tooltip;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Tooltip { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Tooltip;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Tooltip;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Tooltip { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Tooltip { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Tooltip;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Tooltip;
	static var prototype : Tooltip;
}