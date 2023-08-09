package leaflet.icon;

@:jsRequire("leaflet", "Icon.Default") extern class Default extends leaflet.Icon<DefaultIconOptions> {
	function new(?options:DefaultIconOptions);
	function addTo(map:ts.AnyOf2<leaflet.LayerGroup<Dynamic>, leaflet.Map_>):Default;
	function remove():Default;
	function removeFrom(map:leaflet.Map_):Default;
	function addInteractiveTarget(targetEl:js.html.Element):Default;
	function removeInteractiveTarget(targetEl:js.html.Element):Default;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, leaflet.Popup, (layer:leaflet.Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:leaflet.PopupOptions):Default;
	function unbindPopup():Default;
	function openPopup(?latlng:leaflet.LatLngExpression):Default;
	function closePopup():Default;
	function togglePopup():Default;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, leaflet.Popup>):Default;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, leaflet.Tooltip, (layer:leaflet.Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:leaflet.TooltipOptions):Default;
	function unbindTooltip():Default;
	function openTooltip(?latlng:leaflet.LatLngExpression):Default;
	function closeTooltip():Default;
	function toggleTooltip():Default;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, leaflet.Tooltip>):Default;
	function onAdd(map:leaflet.Map_):Default;
	function onRemove(map:leaflet.Map_):Default;
	@:optional
	function beforeAdd(map:leaflet.Map_):Default;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:leaflet.LayerEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.ResizeEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.PopupEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.TooltipEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.ErrorEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LocationEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletMouseEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletKeyboardEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.ZoomAnimEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.DragEndEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.TileEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.TileErrorEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(eventMap:leaflet.LeafletEventHandlerFnMap):Default { })
	function on(type:String, fn:leaflet.LayersControlEventHandlerFn, ?context:Dynamic):Default;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:leaflet.LayerEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.ResizeEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.PopupEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.TooltipEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.ErrorEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.LocationEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.LeafletMouseEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.LeafletKeyboardEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.ZoomAnimEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.DragEndEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.TileEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.TileErrorEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(eventMap:leaflet.LeafletEventHandlerFnMap):Default { })
	@:overload(function():Default { })
	function off(type:String, ?fn:leaflet.LayersControlEventHandlerFn, ?context:Dynamic):Default;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Default;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:leaflet.LayerEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.ResizeEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.PopupEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.TooltipEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.ErrorEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LocationEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletMouseEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletKeyboardEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.ZoomAnimEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.DragEndEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.TileEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.TileEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(eventMap:leaflet.LeafletEventHandlerFnMap):Default { })
	function once(type:String, fn:leaflet.LayersControlEventHandlerFn, ?context:Dynamic):Default;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:leaflet.Evented):Default;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:leaflet.Evented):Default;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:leaflet.LayerEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.ResizeEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.PopupEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.TooltipEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.ErrorEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LocationEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletMouseEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletKeyboardEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.ZoomAnimEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.DragEndEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.TileEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.TileErrorEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(eventMap:leaflet.LeafletEventHandlerFnMap):Default { })
	function addEventListener(type:String, fn:leaflet.LayersControlEventHandlerFn, ?context:Dynamic):Default;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:leaflet.LayerEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.ResizeEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.PopupEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.TooltipEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.ErrorEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.LocationEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.LeafletMouseEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.LeafletKeyboardEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.ZoomAnimEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.DragEndEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.TileEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.TileErrorEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, ?fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(eventMap:leaflet.LeafletEventHandlerFnMap):Default { })
	function removeEventListener(type:String, ?fn:leaflet.LayersControlEventHandlerFn, ?context:Dynamic):Default;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Default;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:leaflet.LayerEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.ResizeEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.PopupEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.TooltipEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.ErrorEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LocationEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletMouseEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletKeyboardEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.ZoomAnimEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.DragEndEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.TileEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.TileErrorEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(type:String, fn:leaflet.LeafletEventHandlerFn, ?context:Dynamic):Default { })
	@:overload(function(eventMap:leaflet.LeafletEventHandlerFnMap):Default { })
	function addOneTimeEventListener(type:String, fn:leaflet.LayersControlEventHandlerFn, ?context:Dynamic):Default;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Default;
	static var prototype : Default;
	@:optional
	static var imagePath : String;
}