package leaflet;

/**
	A set of methods shared between event-powered classes (like Map and Marker).
	Generally, events allow you to execute some function when something happens
	with an object (e.g. the user clicks on the map, causing the map to fire
	'click' event).
**/
@:jsRequire("leaflet", "Events") extern class Events {
	function new();
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Events { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Events;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Events { })
	@:overload(function():Events { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Events;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Events;
	/**
		Returns true if a particular event type has any listeners attached to it.
	**/
	@:overload(function(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic, ?propagate:Bool):Bool { })
	function listens(type:String, ?propagate:Bool):Bool;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Events { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Events;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Events;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Events;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Events { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Events;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Events { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Events;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Events;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Events { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Events { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Events;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Events;
	/**
		Alias for listens(...)
		
		Returns true if a particular event type has any listeners attached to it.
	**/
	function hasEventListeners(type:String):Bool;
	static var prototype : Events;
}