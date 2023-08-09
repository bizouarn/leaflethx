package leaflet;

@:jsRequire("leaflet", "Marker") extern class Marker<P> extends Layer {
	function new(latlng:LatLngExpression, ?options:MarkerOptions);
	function toGeoJSON(?precision:ts.AnyOf2<Float, Bool>):geojson.Feature<geojson.Point, P>;
	function getLatLng():LatLng;
	function setLatLng(latlng:LatLngExpression):Marker<P>;
	function setZIndexOffset(offset:Float):Marker<P>;
	function getIcon():ts.AnyOf2<Icon<IconOptions>, DivIcon>;
	function setIcon(icon:ts.AnyOf2<Icon<IconOptions>, DivIcon>):Marker<P>;
	function setOpacity(opacity:Float):Marker<P>;
	function getElement():Null<js.html.Element>;
	@:optional
	var dragging : Handler;
	@:optional
	var feature : geojson.Feature<geojson.Point, P>;
	private var _shadow : Null<js.html.Element>;
	function addTo(map:ts.AnyOf2<LayerGroup<Dynamic>, Map_>):Marker<P>;
	function remove():Marker<P>;
	function removeFrom(map:Map_):Marker<P>;
	function addInteractiveTarget(targetEl:js.html.Element):Marker<P>;
	function removeInteractiveTarget(targetEl:js.html.Element):Marker<P>;
	function bindPopup(content:ts.AnyOf4<String, js.html.Element, Popup, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:PopupOptions):Marker<P>;
	function unbindPopup():Marker<P>;
	function openPopup(?latlng:LatLngExpression):Marker<P>;
	function closePopup():Marker<P>;
	function togglePopup():Marker<P>;
	function setPopupContent(content:ts.AnyOf3<String, js.html.Element, Popup>):Marker<P>;
	function bindTooltip(content:ts.AnyOf4<String, js.html.Element, Tooltip, (layer:Layer) -> ts.AnyOf2<String, js.html.Element>>, ?options:TooltipOptions):Marker<P>;
	function unbindTooltip():Marker<P>;
	function openTooltip(?latlng:LatLngExpression):Marker<P>;
	function closeTooltip():Marker<P>;
	function toggleTooltip():Marker<P>;
	function setTooltipContent(content:ts.AnyOf3<String, js.html.Element, Tooltip>):Marker<P>;
	function onAdd(map:Map_):Marker<P>;
	function onRemove(map:Map_):Marker<P>;
	@:optional
	function beforeAdd(map:Map_):Marker<P>;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Marker<P> { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Marker<P>;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Marker<P> { })
	@:overload(function():Marker<P> { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Marker<P>;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Marker<P>;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Marker<P> { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Marker<P>;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Marker<P>;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Marker<P>;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Marker<P> { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Marker<P>;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Marker<P> { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Marker<P>;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Marker<P>;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Marker<P> { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Marker<P> { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Marker<P>;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Marker<P>;
	static var prototype : Marker<Dynamic>;
}