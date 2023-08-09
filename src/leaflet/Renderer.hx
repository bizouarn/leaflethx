package leaflet;

@:jsRequire("leaflet", "Renderer") extern class Renderer extends Layer {
	function new(?options:RendererOptions);
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):Renderer;
	function remove():Renderer;
	function removeFrom(map:Map_):Renderer;
	function addInteractiveTarget(targetEl:js.html.Element):Renderer;
	function removeInteractiveTarget(targetEl:js.html.Element):Renderer;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):Renderer;
	function unbindPopup():Renderer;
	function openPopup(?latlng:LatLngExpression):Renderer;
	function closePopup():Renderer;
	function togglePopup():Renderer;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):Renderer;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):Renderer;
	function unbindTooltip():Renderer;
	function openTooltip(?latlng:LatLngExpression):Renderer;
	function closeTooltip():Renderer;
	function toggleTooltip():Renderer;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):Renderer;
	function onAdd(map:Map_):Renderer;
	function onRemove(map:Map_):Renderer;
	@:optional
	function beforeAdd(map:Map_):Renderer;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Renderer { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Renderer;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Renderer { })
	@:overload(function():Renderer { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Renderer;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Renderer;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Renderer { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Renderer;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Renderer;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Renderer;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Renderer { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Renderer;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Renderer { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Renderer;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Renderer;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Renderer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Renderer { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Renderer;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Renderer;
	static var prototype : Renderer;
}