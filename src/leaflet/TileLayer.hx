package leaflet;

@:jsRequire("leaflet", "TileLayer") extern class TileLayer extends GridLayer {
	function new(urlTemplate:String, ?options:TileLayerOptions);
	function setUrl(url:String, ?noRedraw:Bool):TileLayer;
	function getTileUrl(coords:Coords):String;
	private function _tileOnLoad(done:DoneCallback, tile:js.html.Element):Void;
	private function _tileOnError(done:DoneCallback, tile:js.html.Element, e:js.lib.Error):Void;
	private function _abortLoading():Void;
	private function _getZoomForUrl():Float;
	function bringToFront():TileLayer;
	function bringToBack():TileLayer;
	function setOpacity(opacity:Float):TileLayer;
	function setZIndex(zIndex:Float):TileLayer;
	function redraw():TileLayer;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):TileLayer;
	function remove():TileLayer;
	function removeFrom(map:Map_):TileLayer;
	function addInteractiveTarget(targetEl:js.html.Element):TileLayer;
	function removeInteractiveTarget(targetEl:js.html.Element):TileLayer;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):TileLayer;
	function unbindPopup():TileLayer;
	function openPopup(?latlng:LatLngExpression):TileLayer;
	function closePopup():TileLayer;
	function togglePopup():TileLayer;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):TileLayer;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):TileLayer;
	function unbindTooltip():TileLayer;
	function openTooltip(?latlng:LatLngExpression):TileLayer;
	function closeTooltip():TileLayer;
	function toggleTooltip():TileLayer;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):TileLayer;
	function onAdd(map:Map_):TileLayer;
	function onRemove(map:Map_):TileLayer;
	@:optional
	function beforeAdd(map:Map_):TileLayer;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):TileLayer { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):TileLayer;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):TileLayer { })
	@:overload(function():TileLayer { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):TileLayer;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):TileLayer;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):TileLayer { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):TileLayer;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):TileLayer;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):TileLayer;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):TileLayer { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):TileLayer;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):TileLayer { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):TileLayer;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():TileLayer;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):TileLayer { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):TileLayer { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):TileLayer;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):TileLayer;
	static var prototype : TileLayer;
}