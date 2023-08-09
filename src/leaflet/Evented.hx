package leaflet;

/**
	Base class of Leaflet classes supporting events
**/
@:jsRequire("leaflet", "Evented") extern class Evented extends Class_ {
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Evented { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Evented;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Evented { })
	@:overload(function():Evented { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Evented;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Evented;
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
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Evented { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Evented;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Evented;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Evented;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Evented { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Evented;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Evented { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Evented;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Evented;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Evented { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Evented { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Evented;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Evented;
	/**
		Alias for listens(...)
		
		Returns true if a particular event type has any listeners attached to it.
	**/
	function hasEventListeners(type:String):Bool;
	static var prototype : Evented;
}