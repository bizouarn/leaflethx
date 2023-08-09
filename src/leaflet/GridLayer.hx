package leaflet;

@:jsRequire("leaflet", "GridLayer") extern class GridLayer extends Layer {
	function new(?options:GridLayerOptions);
	function bringToFront():GridLayer;
	function bringToBack():GridLayer;
	function getContainer():Null<js.html.Element>;
	function setOpacity(opacity:Float):GridLayer;
	function setZIndex(zIndex:Float):GridLayer;
	function isLoading():Bool;
	function redraw():GridLayer;
	function getTileSize():Point;
	private function createTile(coords:Coords, done:DoneCallback):js.html.Element;
	private function _tileCoordsToKey(coords:Coords):String;
	private function _wrapCoords(parameter:Coords):Coords;
	private var _tiles : InternalTiles;
	@:optional
	private var _tileZoom : Float;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):GridLayer;
	function remove():GridLayer;
	function removeFrom(map:Map_):GridLayer;
	function addInteractiveTarget(targetEl:js.html.Element):GridLayer;
	function removeInteractiveTarget(targetEl:js.html.Element):GridLayer;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):GridLayer;
	function unbindPopup():GridLayer;
	function openPopup(?latlng:LatLngExpression):GridLayer;
	function closePopup():GridLayer;
	function togglePopup():GridLayer;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):GridLayer;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):GridLayer;
	function unbindTooltip():GridLayer;
	function openTooltip(?latlng:LatLngExpression):GridLayer;
	function closeTooltip():GridLayer;
	function toggleTooltip():GridLayer;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):GridLayer;
	function onAdd(map:Map_):GridLayer;
	function onRemove(map:Map_):GridLayer;
	@:optional
	function beforeAdd(map:Map_):GridLayer;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):GridLayer { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):GridLayer;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):GridLayer { })
	@:overload(function():GridLayer { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):GridLayer;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):GridLayer;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):GridLayer { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):GridLayer;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):GridLayer;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):GridLayer;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):GridLayer { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):GridLayer;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):GridLayer { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):GridLayer;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():GridLayer;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):GridLayer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):GridLayer { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):GridLayer;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):GridLayer;
	static var prototype : GridLayer;
}