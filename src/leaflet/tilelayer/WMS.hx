package leaflet.tilelayer;

@:jsRequire("leaflet", "TileLayer.WMS") extern class WMS extends leaflet.TileLayer {
	function new(baseUrl:String, options:leaflet.WMSOptions);
	function setParams(params:leaflet.WMSParams, ?noRedraw:Bool):WMS;
	var wmsParams : leaflet.WMSParams;
	function setUrl(url:String, ?noRedraw:Bool):WMS;
	function bringToFront():WMS;
	function bringToBack():WMS;
	function setOpacity(opacity:Float):WMS;
	function setZIndex(zIndex:Float):WMS;
	function redraw():WMS;
	function addTo(map:ts.AnyOf2<leaflet.LayerGroup<Dynamic>, leaflet.Map_>):WMS;
	function remove():WMS;
	function removeFrom(map:leaflet.Map_):WMS;
	function addInteractiveTarget(targetEl:js.html.Element):WMS;
	function removeInteractiveTarget(targetEl:js.html.Element):WMS;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, leaflet.Popup, (layer:leaflet.Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:leaflet.PopupOptions):WMS;
	function unbindPopup():WMS;
	function openPopup(?latlng:leaflet.LatLngExpression):WMS;
	function closePopup():WMS;
	function togglePopup():WMS;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, leaflet.Popup>):WMS;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, leaflet.Tooltip, (layer:leaflet.Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:leaflet.TooltipOptions):WMS;
	function unbindTooltip():WMS;
	function openTooltip(?latlng:leaflet.LatLngExpression):WMS;
	function closeTooltip():WMS;
	function toggleTooltip():WMS;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, leaflet.Tooltip>):WMS;
	function onAdd(map:leaflet.Map_):WMS;
	function onRemove(map:leaflet.Map_):WMS;
	@:optional
	function beforeAdd(map:leaflet.Map_):WMS;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:leaflet.LayerEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.ResizeEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.PopupEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.TooltipEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.ErrorEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LocationEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletMouseEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletKeyboardEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.ZoomAnimEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.DragEndEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.TileEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.TileErrorEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(eventMap:leaflet.LeafletEventHandlerFnMap):WMS { })
	function on(type:String, fn:leaflet.LayersControlEventHandlerFn, ?context:Dynamic):WMS;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:leaflet.LayerEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.ResizeEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.PopupEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.TooltipEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.ErrorEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.LocationEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.LeafletMouseEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.LeafletKeyboardEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.ZoomAnimEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.DragEndEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.TileEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.TileErrorEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(eventMap:leaflet.LeafletEventHandlerFnMap):WMS { })
	@:overload(function():WMS { })
	function off(type:String, ?fn:leaflet.LayersControlEventHandlerFn, ?context:Dynamic):WMS;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):WMS;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:leaflet.LayerEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.ResizeEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.PopupEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.TooltipEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.ErrorEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LocationEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletMouseEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletKeyboardEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.ZoomAnimEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.DragEndEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.TileEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.TileEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(eventMap:leaflet.LeafletEventHandlerFnMap):WMS { })
	function once(type:String, fn:leaflet.LayersControlEventHandlerFn, ?context:Dynamic):WMS;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:leaflet.Evented):WMS;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:leaflet.Evented):WMS;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:leaflet.LayerEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.ResizeEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.PopupEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.TooltipEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.ErrorEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LocationEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletMouseEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletKeyboardEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.ZoomAnimEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.DragEndEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.TileEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.TileErrorEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(eventMap:leaflet.LeafletEventHandlerFnMap):WMS { })
	function addEventListener(type:String, fn:leaflet.LayersControlEventHandlerFn, ?context:Dynamic):WMS;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:leaflet.LayerEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.ResizeEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.PopupEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.TooltipEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.ErrorEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.LocationEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.LeafletMouseEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.LeafletKeyboardEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.ZoomAnimEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.DragEndEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.TileEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.TileErrorEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, ?fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(eventMap:leaflet.LeafletEventHandlerFnMap):WMS { })
	function removeEventListener(type:String, ?fn:leaflet.LayersControlEventHandlerFn, ?context:Dynamic):WMS;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():WMS;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:leaflet.LayerEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.ResizeEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.PopupEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.TooltipEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.ErrorEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LocationEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletMouseEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletKeyboardEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.ZoomAnimEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.DragEndEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.TileEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.TileErrorEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):WMS { })
	@:overload(function(eventMap:leaflet.LeafletEventHandlerFnMap):WMS { })
	function addOneTimeEventListener(type:String, fn:leaflet.LayersControlEventHandlerFn, ?context:Dynamic):WMS;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):WMS;
	static var prototype : WMS;
}