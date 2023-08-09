package leaflet;

@:jsRequire("leaflet", "ImageOverlay") extern class ImageOverlay extends Layer {
	function new(imageUrl:String, bounds:LatLngBoundsExpression, ?options:ImageOverlayOptions);
	function bringToFront():ImageOverlay;
	function bringToBack():ImageOverlay;
	function setUrl(url:String):ImageOverlay;
	/**
		Update the bounds that this ImageOverlay covers
	**/
	function setBounds(bounds:LatLngBounds):ImageOverlay;
	/**
		Changes the zIndex of the image overlay
	**/
	function setZIndex(value:Float):ImageOverlay;
	/**
		Changes the opacity of the image element
	**/
	function setOpacity(opacity:Float):ImageOverlay;
	/**
		Changes the style of the image element. As of 1.8, only the opacity is changed
	**/
	function setStyle(styleOpts:ImageOverlayStyleOptions):ImageOverlay;
	/**
		Get the bounds that this ImageOverlay covers
	**/
	function getBounds():LatLngBounds;
	/**
		Get the center of the bounds this ImageOverlay covers
	**/
	function getCenter():Point;
	/**
		Get the img element that represents the ImageOverlay on the map
	**/
	function getElement():Null<js.html.ImageElement>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):ImageOverlay;
	function remove():ImageOverlay;
	function removeFrom(map:Map_):ImageOverlay;
	function addInteractiveTarget(targetEl:js.html.Element):ImageOverlay;
	function removeInteractiveTarget(targetEl:js.html.Element):ImageOverlay;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):ImageOverlay;
	function unbindPopup():ImageOverlay;
	function openPopup(?latlng:LatLngExpression):ImageOverlay;
	function closePopup():ImageOverlay;
	function togglePopup():ImageOverlay;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):ImageOverlay;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):ImageOverlay;
	function unbindTooltip():ImageOverlay;
	function openTooltip(?latlng:LatLngExpression):ImageOverlay;
	function closeTooltip():ImageOverlay;
	function toggleTooltip():ImageOverlay;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):ImageOverlay;
	function onAdd(map:Map_):ImageOverlay;
	function onRemove(map:Map_):ImageOverlay;
	@:optional
	function beforeAdd(map:Map_):ImageOverlay;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):ImageOverlay { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):ImageOverlay;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):ImageOverlay { })
	@:overload(function():ImageOverlay { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):ImageOverlay;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):ImageOverlay;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):ImageOverlay { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):ImageOverlay;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):ImageOverlay;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):ImageOverlay;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):ImageOverlay { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):ImageOverlay;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):ImageOverlay { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):ImageOverlay;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():ImageOverlay;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):ImageOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):ImageOverlay { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):ImageOverlay;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):ImageOverlay;
	static var prototype : ImageOverlay;
}