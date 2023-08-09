package leaflet;

@:jsRequire("leaflet", "Map") extern class Map_ extends Evented {
	function new(element:ts.AnyOf2<String, js.html.Element>, ?options:MapOptions);
	function getRenderer(layer:Path):Renderer;
	function addControl(control:Control):Map_;
	function removeControl(control:Control):Map_;
	function addLayer(layer:Layer):Map_;
	function removeLayer(layer:Layer):Map_;
	function hasLayer(layer:Layer):Bool;
	function eachLayer(fn:(layer:Layer) -> Void, ?context:Dynamic):Map_;
	@:overload(function(content:ts.AnyOf2<String, js.html.Element>, latlng:LatLngExpression, ?options:PopupOptions):Map_ { })
	function openPopup(popup:Popup):Map_;
	function closePopup(?popup:Popup):Map_;
	@:overload(function(content:ts.AnyOf2<String, js.html.Element>, latlng:LatLngExpression, ?options:TooltipOptions):Map_ { })
	function openTooltip(tooltip:Tooltip):Map_;
	function closeTooltip(?tooltip:Tooltip):Map_;
	function setView(center:LatLngExpression, ?zoom:Float, ?options:ZoomPanOptions):Map_;
	function setZoom(zoom:Float, ?options:ZoomPanOptions):Map_;
	function zoomIn(?delta:Float, ?options:ZoomOptions):Map_;
	function zoomOut(?delta:Float, ?options:ZoomOptions):Map_;
	function setZoomAround(position:ts.AnyOf4<LatLngTuple, LatLngLiteral, LatLng, Point>, zoom:Float, ?options:ZoomOptions):Map_;
	function fitBounds(bounds:LatLngBoundsExpression, ?options:FitBoundsOptions):Map_;
	function fitWorld(?options:FitBoundsOptions):Map_;
	function panTo(latlng:LatLngExpression, ?options:PanOptions):Map_;
	function panBy(offset:PointExpression, ?options:PanOptions):Map_;
	function setMaxBounds(bounds:LatLngBoundsExpression):Map_;
	function setMinZoom(zoom:Float):Map_;
	function setMaxZoom(zoom:Float):Map_;
	function panInside(latLng:LatLngExpression, ?options:PanInsideOptions):Map_;
	function panInsideBounds(bounds:LatLngBoundsExpression, ?options:PanOptions):Map_;
	/**
		Boolean for animate or advanced ZoomPanOptions
	**/
	function invalidateSize(?options:ts.AnyOf2<Bool, InvalidateSizeOptions>):Map_;
	function stop():Map_;
	function flyTo(latlng:LatLngExpression, ?zoom:Float, ?options:ZoomPanOptions):Map_;
	function flyToBounds(bounds:LatLngBoundsExpression, ?options:FitBoundsOptions):Map_;
	function addHandler(name:String, HandlerClass:{ var prototype : Handler; function extend(props:Dynamic):Dynamic; function include(props:Dynamic):Dynamic; function mergeOptions(props:Dynamic):Dynamic; @:overload(function(methodName:String, args:haxe.extern.Rest<Dynamic>):Dynamic { }) function addInitHook(initHookFn:() -> Void):Dynamic; function callInitHooks():Void; }):Map_;
	function remove():Map_;
	function createPane(name:String, ?container:js.html.Element):js.html.Element;
	/**
		Name of the pane or the pane as HTML-Element
	**/
	function getPane(pane:ts.AnyOf2<String, js.html.Element>):Null<js.html.Element>;
	function getPanes():Dynamic;
	function getContainer():js.html.Element;
	function whenReady(fn:() -> Void, ?context:Dynamic):Map_;
	function getCenter():LatLng;
	function getZoom():Float;
	function getBounds():LatLngBounds;
	function getMinZoom():Float;
	function getMaxZoom():Float;
	function getBoundsZoom(bounds:LatLngBoundsExpression, ?inside:Bool, ?padding:Point):Float;
	function getSize():Point;
	function getPixelBounds():Bounds;
	function getPixelOrigin():Point;
	function getPixelWorldBounds(?zoom:Float):Bounds;
	function getZoomScale(toZoom:Float, ?fromZoom:Float):Float;
	function getScaleZoom(scale:Float, ?fromZoom:Float):Float;
	function project(latlng:LatLngExpression, ?zoom:Float):Point;
	function unproject(point:PointExpression, ?zoom:Float):LatLng;
	function layerPointToLatLng(point:PointExpression):LatLng;
	function latLngToLayerPoint(latlng:LatLngExpression):Point;
	function wrapLatLng(latlng:LatLngExpression):LatLng;
	function wrapLatLngBounds(bounds:LatLngBounds):LatLngBounds;
	function distance(latlng1:LatLngExpression, latlng2:LatLngExpression):Float;
	function containerPointToLayerPoint(point:PointExpression):Point;
	function containerPointToLatLng(point:PointExpression):LatLng;
	function layerPointToContainerPoint(point:PointExpression):Point;
	function latLngToContainerPoint(latlng:LatLngExpression):Point;
	function mouseEventToContainerPoint(ev:js.html.MouseEvent):Point;
	function mouseEventToLayerPoint(ev:js.html.MouseEvent):Point;
	function mouseEventToLatLng(ev:js.html.MouseEvent):LatLng;
	function locate(?options:LocateOptions):Map_;
	function stopLocate():Map_;
	var attributionControl : leaflet.control.Attribution;
	var boxZoom : Handler;
	var doubleClickZoom : Handler;
	var dragging : Handler;
	var keyboard : Handler;
	var scrollWheelZoom : Handler;
	@:optional
	var tap : Handler;
	var touchZoom : Handler;
	var zoomControl : leaflet.control.Zoom;
	var options : MapOptions;
	/**
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Map_ { })
	function on(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Map_;
	/**
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Removes a set of type/listener pairs.
		
		Removes all listeners to all events on the object.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Map_ { })
	@:overload(function():Map_ { })
	function off(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Map_;
	/**
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fire(type:String, ?data:Dynamic, ?propagate:Bool):Map_;
	/**
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Map_ { })
	function once(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Map_;
	/**
		Adds an event parent - an Evented that will receive propagated events
	**/
	function addEventParent(obj:Evented):Map_;
	/**
		Removes an event parent, so it will stop receiving propagated events
	**/
	function removeEventParent(obj:Evented):Map_;
	/**
		Alias for on(...)
		
		Adds a listener function (fn) to a particular event type of the object.
		You can optionally specify the context of the listener (object the this
		keyword will point to). You can also pass several space-separated types
		(e.g. 'click dblclick').
		
		Alias for on(...)
		
		Adds a set of type/listener pairs, e.g. {click: onClick, mousemove: onMouseMove}
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Map_ { })
	function addEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Map_;
	/**
		Alias for off(...)
		
		Removes a previously added listener function. If no function is specified,
		it will remove all the listeners of that particular event from the object.
		Note that if you passed a custom context to on, you must pass the same context
		to off in order to remove the listener.
		
		Alias for off(...)
		
		Removes a set of type/listener pairs.
	**/
	@:overload(function(type:String, ?fn:LayerEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:ResizeEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:PopupEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:TooltipEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:ErrorEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:LocationEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:DragEndEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:TileEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:TileErrorEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, ?fn:LeafletEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Map_ { })
	function removeEventListener(type:String, ?fn:LayersControlEventHandlerFn, ?context:Dynamic):Map_;
	/**
		Alias for off()
		
		Removes all listeners to all events on the object.
	**/
	function clearAllEventListeners():Map_;
	/**
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
		
		Alias for once(...)
		
		Behaves as on(...), except the listener will only get fired once and then removed.
	**/
	@:overload(function(type:String, fn:LayerEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:ResizeEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:PopupEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:TooltipEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:ErrorEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LocationEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletMouseEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletKeyboardEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:ZoomAnimEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:DragEndEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:TileEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:TileErrorEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(type:String, fn:LeafletEventHandlerFn, ?context:Dynamic):Map_ { })
	@:overload(function(eventMap:LeafletEventHandlerFnMap):Map_ { })
	function addOneTimeEventListener(type:String, fn:LayersControlEventHandlerFn, ?context:Dynamic):Map_;
	/**
		Alias for fire(...)
		
		Fires an event of the specified type. You can optionally provide a data
		object — the first argument of the listener function will contain its properties.
		The event might can optionally be propagated to event parents.
	**/
	function fireEvent(type:String, ?data:Dynamic, ?propagate:Bool):Map_;
	static var prototype : Map_;
}