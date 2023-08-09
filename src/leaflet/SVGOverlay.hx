package leaflet;

@:jsRequire("leaflet", "SVGOverlay") extern class SVGOverlay extends Layer {
	function new(svgImage:ts.AnyOf2<String, js.html.svg.Element>, bounds:LatLngBoundsExpression, ?options:ImageOverlayOptions);
	function bringToFront():SVGOverlay;
	function bringToBack():SVGOverlay;
	function setUrl(url:String):SVGOverlay;
	/**
		Update the bounds that this SVGOverlay covers
	**/
	function setBounds(bounds:LatLngBounds):SVGOverlay;
	/**
		Changes the zIndex of the image overlay
	**/
	function setZIndex(value:Float):SVGOverlay;
	/**
		Changes the opacity of the image element
	**/
	function setOpacity(opacity:Float):SVGOverlay;
	/**
		Changes the style of the image element. As of 1.8, only the opacity is changed
	**/
	function setStyle(styleOpts:ImageOverlayStyleOptions):SVGOverlay;
	/**
		Get the bounds that this SVGOverlay covers
	**/
	function getBounds():LatLngBounds;
	/**
		Get the center of the bounds this ImageOverlay covers
	**/
	function getCenter():Point;
	/**
		Get the img element that represents the SVGOverlay on the map
	**/
	function getElement():Null<js.html.svg.Element>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):SVGOverlay;
	function remove():SVGOverlay;
	function removeFrom(map:Map_):SVGOverlay;
	function addInteractiveTarget(targetEl:js.html.Element):SVGOverlay;
	function removeInteractiveTarget(targetEl:js.html.Element):SVGOverlay;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):SVGOverlay;
	function unbindPopup():SVGOverlay;
	function openPopup(?latlng:LatLngExpression):SVGOverlay;
	function closePopup():SVGOverlay;
	function togglePopup():SVGOverlay;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):SVGOverlay;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):SVGOverlay;
	function unbindTooltip():SVGOverlay;
	function openTooltip(?latlng:LatLngExpression):SVGOverlay;
	function closeTooltip():SVGOverlay;
	function toggleTooltip():SVGOverlay;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):SVGOverlay;
	function onAdd(map:Map_):SVGOverlay;
	function onRemove(map:Map_):SVGOverlay;
	@:optional
	function beforeAdd(map:Map_):SVGOverlay;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):SVGOverlay { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):SVGOverlay;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):SVGOverlay { })
	@:overload(function():SVGOverlay { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):SVGOverlay;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):SVGOverlay;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):SVGOverlay { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):SVGOverlay;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):SVGOverlay;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):SVGOverlay;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):SVGOverlay { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):SVGOverlay;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):SVGOverlay { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):SVGOverlay;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():SVGOverlay;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):SVGOverlay { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):SVGOverlay { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):SVGOverlay;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):SVGOverlay;
	static var prototype : SVGOverlay;
}