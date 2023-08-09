package leaflet;

@:jsRequire("leaflet", "VideoOverlay") extern class VideoOverlay extends Layer {
	function new(video:ts.AnyOf3<String, Array<String>, js.html.VideoElement>, bounds:LatLngBoundsExpression, ?options:VideoOverlayOptions);
	function bringToFront():VideoOverlay;
	function bringToBack():VideoOverlay;
	function setUrl(url:String):VideoOverlay;
	/**
		Update the bounds that this VideoOverlay covers
	**/
	function setBounds(bounds:LatLngBounds):VideoOverlay;
	/**
		Changes the zIndex of the image overlay
	**/
	function setZIndex(value:Float):VideoOverlay;
	/**
		Changes the opacity of the image element
	**/
	function setOpacity(opacity:Float):VideoOverlay;
	/**
		Changes the style of the image element. As of 1.8, only the opacity is changed
	**/
	function setStyle(styleOpts:ImageOverlayStyleOptions):VideoOverlay;
	/**
		Get the bounds that this VideoOverlay covers
	**/
	function getBounds():LatLngBounds;
	/**
		Get the center of the bounds this ImageOverlay covers
	**/
	function getCenter():Point;
	/**
		Get the video element that represents the VideoOverlay on the map
	**/
	function getElement():Null<js.html.VideoElement>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):VideoOverlay;
	function remove():VideoOverlay;
	function removeFrom(map:Map_):VideoOverlay;
	function addInteractiveTarget(targetEl:js.html.Element):VideoOverlay;
	function removeInteractiveTarget(targetEl:js.html.Element):VideoOverlay;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):VideoOverlay;
	function unbindPopup():VideoOverlay;
	function openPopup(?latlng:LatLngExpression):VideoOverlay;
	function closePopup():VideoOverlay;
	function togglePopup():VideoOverlay;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):VideoOverlay;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):VideoOverlay;
	function unbindTooltip():VideoOverlay;
	function openTooltip(?latlng:LatLngExpression):VideoOverlay;
	function closeTooltip():VideoOverlay;
	function toggleTooltip():VideoOverlay;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):VideoOverlay;
	function onAdd(map:Map_):VideoOverlay;
	function onRemove(map:Map_):VideoOverlay;
	@:optional
	function beforeAdd(map:Map_):VideoOverlay;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):VideoOverlay { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):VideoOverlay;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):VideoOverlay { })
	@:overload(function():VideoOverlay { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):VideoOverlay;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):VideoOverlay;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):VideoOverlay { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):VideoOverlay;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):VideoOverlay;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):VideoOverlay;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):VideoOverlay { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):VideoOverlay;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):VideoOverlay { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):VideoOverlay;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():VideoOverlay;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):VideoOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):VideoOverlay { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):VideoOverlay;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):VideoOverlay;
	static var prototype : VideoOverlay;
}