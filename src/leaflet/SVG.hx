package leaflet;

@:jsRequire("leaflet", "SVG") extern class SVG extends Renderer {
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):SVG;
	function remove():SVG;
	function removeFrom(map:Map_):SVG;
	function addInteractiveTarget(targetEl:js.html.Element):SVG;
	function removeInteractiveTarget(targetEl:js.html.Element):SVG;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):SVG;
	function unbindPopup():SVG;
	function openPopup(?latlng:LatLngExpression):SVG;
	function closePopup():SVG;
	function togglePopup():SVG;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):SVG;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):SVG;
	function unbindTooltip():SVG;
	function openTooltip(?latlng:LatLngExpression):SVG;
	function closeTooltip():SVG;
	function toggleTooltip():SVG;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):SVG;
	function onAdd(map:Map_):SVG;
	function onRemove(map:Map_):SVG;
	@:optional
	function beforeAdd(map:Map_):SVG;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):SVG { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):SVG;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):SVG { })
	@:overload(function():SVG { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):SVG;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):SVG;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):SVG { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):SVG;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):SVG;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):SVG;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):SVG { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):SVG;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):SVG { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):SVG;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():SVG;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVG { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):SVG { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):SVG;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):SVG;
	static var prototype : SVG;
	@:overload(function(name:String):js.html.svg.Element { })
	static function create<K>(name:K):Dynamic;
	static function pointsToPath(rings:Array<PointExpression>, closed:Bool):String;
}