package leaflet;

@:jsRequire("leaflet", "DivOverlay") extern class DivOverlay extends Layer {
	@:overload(function(?options:DivOverlayOptions, ?source:Layer):DivOverlay { })
	function new(latlng:LatLngExpression, ?options:TooltipOptions);
	function getLatLng():Null<LatLng>;
	function setLatLng(latlng:LatLngExpression):DivOverlay;
	function getContent():Null<ts.AnyOf3<String, js.html.Element, (source:Layer) -> ts.AnyOf2<String, js.html.Element>>>;
	function setContent(htmlContent:ts.AnyOf3<String, js.html.Element, (source:Layer) -> ts.AnyOf2<String, js.html.Element>>):DivOverlay;
	function getElement():Null<js.html.Element>;
	function update():Void;
	function isOpen():Bool;
	function bringToFront():DivOverlay;
	function bringToBack():DivOverlay;
	function openOn(map:Map_):DivOverlay;
	function toggle(?layer:Layer):DivOverlay;
	function close():DivOverlay;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):DivOverlay;
	function remove():DivOverlay;
	function removeFrom(map:Map_):DivOverlay;
	function addInteractiveTarget(targetEl:js.html.Element):DivOverlay;
	function removeInteractiveTarget(targetEl:js.html.Element):DivOverlay;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):DivOverlay;
	function unbindPopup():DivOverlay;
	function openPopup(?latlng:LatLngExpression):DivOverlay;
	function closePopup():DivOverlay;
	function togglePopup():DivOverlay;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):DivOverlay;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):DivOverlay;
	function unbindTooltip():DivOverlay;
	function openTooltip(?latlng:LatLngExpression):DivOverlay;
	function closeTooltip():DivOverlay;
	function toggleTooltip():DivOverlay;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):DivOverlay;
	function onAdd(map:Map_):DivOverlay;
	function onRemove(map:Map_):DivOverlay;
	@:optional
	function beforeAdd(map:Map_):DivOverlay;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):DivOverlay { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):DivOverlay;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):DivOverlay { })
	@:overload(function():DivOverlay { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):DivOverlay;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):DivOverlay;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):DivOverlay { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):DivOverlay;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):DivOverlay;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):DivOverlay;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):DivOverlay { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):DivOverlay;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):DivOverlay { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):DivOverlay;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():DivOverlay;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):DivOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):DivOverlay { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):DivOverlay;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):DivOverlay;
	static var prototype : DivOverlay;
}