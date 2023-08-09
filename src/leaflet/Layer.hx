package leaflet;

@:jsRequire("leaflet", "Layer") extern class Layer extends Evented {
	function new(?options:LayerOptions);
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):Layer;
	function remove():Layer;
	function removeFrom(map:Map_):Layer;
	function getPane(?name:String):Null<js.html.Element>;
	function addInteractiveTarget(targetEl:js.html.Element):Layer;
	function removeInteractiveTarget(targetEl:js.html.Element):Layer;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):Layer;
	function unbindPopup():Layer;
	function openPopup(?latlng:LatLngExpression):Layer;
	function closePopup():Layer;
	function togglePopup():Layer;
	function isPopupOpen():Bool;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):Layer;
	function getPopup():Null<Popup>;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):Layer;
	function unbindTooltip():Layer;
	function openTooltip(?latlng:LatLngExpression):Layer;
	function closeTooltip():Layer;
	function toggleTooltip():Layer;
	function isTooltipOpen():Bool;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):Layer;
	function getTooltip():Null<Tooltip>;
	function onAdd(map:Map_):Layer;
	function onRemove(map:Map_):Layer;
	@:optional
	function getEvents():haxe.DynamicAccess<LeafletEventHandlerFn>;
	@:optional
	function getAttribution():Null<String>;
	@:optional
	function beforeAdd(map:Map_):Layer;
	private var _map : Map_;
	var options : LayerOptions;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Layer { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Layer;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Layer { })
	@:overload(function():Layer { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Layer;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Layer;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Layer { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Layer;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Layer;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Layer;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Layer { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Layer;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Layer { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Layer;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Layer;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Layer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Layer { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Layer;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Layer;
	static var prototype : Layer;
}