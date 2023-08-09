package leaflet;

@:jsRequire("leaflet", "DomEvent") @valueModuleOnly extern class DomEvent {
	@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	} { })
	static function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	};
	@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	} { })
	@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	} { })
	static function off(el:js.html.Element):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	};
	static function stopPropagation(ev:leaflet.domevent.PropagableEvent):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	};
	static function disableScrollPropagation(el:js.html.Element):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	};
	static function disableClickPropagation(el:js.html.Element):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	};
	static function preventDefault(ev:js.html.Event):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	};
	static function stop(ev:leaflet.domevent.PropagableEvent):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	};
	static function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
	static function getWheelDelta(ev:js.html.Event):Float;
	@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	} { })
	static function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	};
	@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	} { })
	static function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):{
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function on(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic { })
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function off(el:js.html.Element):Dynamic;
		function stopPropagation(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function disableScrollPropagation(el:js.html.Element):Dynamic;
		function disableClickPropagation(el:js.html.Element):Dynamic;
		function preventDefault(ev:js.html.Event):Dynamic;
		function stop(ev:leaflet.domevent.PropagableEvent):Dynamic;
		function getMousePosition(ev:js.html.MouseEvent, ?container:js.html.Element):Point;
		function getWheelDelta(ev:js.html.Event):Float;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function addListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		@:overload(function(el:js.html.Element, eventMap:haxe.DynamicAccess<leaflet.domevent.EventHandlerFn>, ?context:Dynamic):Dynamic { })
		function removeListener(el:js.html.Element, types:String, fn:leaflet.domevent.EventHandlerFn, ?context:Dynamic):Dynamic;
		function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
	};
	static function getPropagationPath(ev:js.html.Event):Array<js.html.Element>;
}