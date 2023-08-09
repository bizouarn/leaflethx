package leaflet;

@:jsRequire("leaflet", "PosAnimation") extern class PosAnimation extends Evented {
	function run(el:js.html.Element, newPos:Point, ?duration:Float, ?easeLinearity:Float):Void;
	function stop():Void;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):PosAnimation { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):PosAnimation;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):PosAnimation { })
	@:overload(function():PosAnimation { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):PosAnimation;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):PosAnimation;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):PosAnimation { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):PosAnimation;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):PosAnimation;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):PosAnimation;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):PosAnimation { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):PosAnimation;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):PosAnimation { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):PosAnimation;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():PosAnimation;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):PosAnimation { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):PosAnimation { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):PosAnimation;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):PosAnimation;
	static var prototype : PosAnimation;
}