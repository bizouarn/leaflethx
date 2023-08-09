package leaflet;

@:jsRequire("leaflet", "Polyline") extern class Polyline<T, P> extends Path {
	function new(latlngs:ts.AnyOf2<Array<LatLngExpression>, Array<Array<LatLngExpression>>>, ?options:PolylineOptions);
	function toGeoJSON(?precision:ts.AnyOf2<Float, Bool>):geojson.Feature<T, P>;
	function getLatLngs():ts.AnyOf3<Array<LatLng>, Array<Array<LatLng>>, Array<Array<Array<LatLng>>>>;
	function setLatLngs(latlngs:ts.AnyOf3<Array<LatLngExpression>, Array<Array<LatLngExpression>>, Array<Array<Array<LatLngExpression>>>>):Polyline<T, P>;
	function isEmpty():Bool;
	function getCenter():LatLng;
	function getBounds():LatLngBounds;
	function addLatLng(latlng:ts.AnyOf4<LatLngTuple, LatLngLiteral, LatLng, Array<LatLngExpression>>, ?latlngs:Array<LatLng>):Polyline<T, P>;
	function closestLayerPoint(p:Point):Point;
	@:optional
	var feature : geojson.Feature<T, P>;
	function redraw():Polyline<T, P>;
	function setStyle(style:PathOptions):Polyline<T, P>;
	function bringToFront():Polyline<T, P>;
	function bringToBack():Polyline<T, P>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):Polyline<T, P>;
	function remove():Polyline<T, P>;
	function removeFrom(map:Map_):Polyline<T, P>;
	function addInteractiveTarget(targetEl:js.html.Element):Polyline<T, P>;
	function removeInteractiveTarget(targetEl:js.html.Element):Polyline<T, P>;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):Polyline<T, P>;
	function unbindPopup():Polyline<T, P>;
	function openPopup(?latlng:LatLngExpression):Polyline<T, P>;
	function closePopup():Polyline<T, P>;
	function togglePopup():Polyline<T, P>;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):Polyline<T, P>;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):Polyline<T, P>;
	function unbindTooltip():Polyline<T, P>;
	function openTooltip(?latlng:LatLngExpression):Polyline<T, P>;
	function closeTooltip():Polyline<T, P>;
	function toggleTooltip():Polyline<T, P>;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):Polyline<T, P>;
	function onAdd(map:Map_):Polyline<T, P>;
	function onRemove(map:Map_):Polyline<T, P>;
	@:optional
	function beforeAdd(map:Map_):Polyline<T, P>;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Polyline<T, P> { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Polyline<T, P>;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Polyline<T, P> { })
	@:overload(function():Polyline<T, P> { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Polyline<T, P>;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Polyline<T, P>;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Polyline<T, P> { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Polyline<T, P>;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Polyline<T, P>;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Polyline<T, P>;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Polyline<T, P> { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Polyline<T, P>;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Polyline<T, P> { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Polyline<T, P>;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Polyline<T, P>;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polyline<T, P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Polyline<T, P> { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Polyline<T, P>;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Polyline<T, P>;
	static var prototype : Polyline<Dynamic, Dynamic>;
}