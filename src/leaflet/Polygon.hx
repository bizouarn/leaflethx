package leaflet;

@:jsRequire("leaflet", "Polygon") extern class Polygon<P> extends Polyline<ts.AnyOf2<geojson.Polygon, geojson.MultiPolygon>, P> {
	function new(latlngs:ts.AnyOf3<Array<LatLngExpression>, Array<Array<LatLngExpression>>, Array<Array<Array<LatLngExpression>>>>, ?options:PolylineOptions);
	function setLatLngs(latlngs:ts.AnyOf3<Array<LatLngExpression>, Array<Array<LatLngExpression>>, Array<Array<Array<LatLngExpression>>>>):Polygon<P>;
	function addLatLng(latlng:ts.AnyOf4<LatLngTuple, LatLngLiteral, LatLng, Array<LatLngExpression>>, ?latlngs:Array<LatLng>):Polygon<P>;
	function redraw():Polygon<P>;
	function setStyle(style:PathOptions):Polygon<P>;
	function bringToFront():Polygon<P>;
	function bringToBack():Polygon<P>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):Polygon<P>;
	function remove():Polygon<P>;
	function removeFrom(map:Map_):Polygon<P>;
	function addInteractiveTarget(targetEl:js.html.Element):Polygon<P>;
	function removeInteractiveTarget(targetEl:js.html.Element):Polygon<P>;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):Polygon<P>;
	function unbindPopup():Polygon<P>;
	function openPopup(?latlng:LatLngExpression):Polygon<P>;
	function closePopup():Polygon<P>;
	function togglePopup():Polygon<P>;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):Polygon<P>;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):Polygon<P>;
	function unbindTooltip():Polygon<P>;
	function openTooltip(?latlng:LatLngExpression):Polygon<P>;
	function closeTooltip():Polygon<P>;
	function toggleTooltip():Polygon<P>;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):Polygon<P>;
	function onAdd(map:Map_):Polygon<P>;
	function onRemove(map:Map_):Polygon<P>;
	@:optional
	function beforeAdd(map:Map_):Polygon<P>;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Polygon<P> { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Polygon<P>;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Polygon<P> { })
	@:overload(function():Polygon<P> { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Polygon<P>;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Polygon<P>;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Polygon<P> { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Polygon<P>;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Polygon<P>;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Polygon<P>;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Polygon<P> { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Polygon<P>;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Polygon<P> { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Polygon<P>;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Polygon<P>;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Polygon<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Polygon<P> { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Polygon<P>;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Polygon<P>;
	static var prototype : Polygon<Dynamic>;
}