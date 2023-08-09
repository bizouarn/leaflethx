package leaflet;

@:jsRequire("leaflet", "DomUtil") @valueModuleOnly extern class DomUtil {
	/**
		Get Element by its ID or with the given HTML-Element
	**/
	static function get(element:ts.AnyOf2<String, js.html.Element>):Null<js.html.Element>;
	static function getStyle(el:js.html.Element, styleAttrib:String):Null<String>;
	/**
		Creates an HTML element with `tagName`, sets its class to `className`, and optionally appends it to `container` element.
	**/
	@:overload(function(tagName:String, ?className:String, ?container:js.html.Element):js.html.Element { })
	static function create<T>(tagName:T, ?className:String, ?container:js.html.Element):Dynamic;
	static function remove(el:js.html.Element):Void;
	static function empty(el:js.html.Element):Void;
	static function toFront(el:js.html.Element):Void;
	static function toBack(el:js.html.Element):Void;
	static function hasClass(el:js.html.Element, name:String):Bool;
	static function addClass(el:js.html.Element, name:String):Void;
	static function removeClass(el:js.html.Element, name:String):Void;
	static function setClass(el:js.html.Element, name:String):Void;
	static function getClass(el:js.html.Element):String;
	static function setOpacity(el:js.html.Element, opacity:Float):Void;
	static function testProp(props:Array<String>):ts.AnyOf2<String, Bool>;
	static function setTransform(el:js.html.Element, offset:Point, ?scale:Float):Void;
	static function setPosition(el:js.html.Element, position:Point):Void;
	static function getPosition(el:js.html.Element):Point;
	static function getScale(el:js.html.Element):{
		var x : Float;
		var y : Float;
		var boundingClientRect : js.html.DOMRect;
	};
	static function getSizedParentNode(el:js.html.Element):js.html.Element;
	static function disableTextSelection():Void;
	static function enableTextSelection():Void;
	static function disableImageDrag():Void;
	static function enableImageDrag():Void;
	static function preventOutline(el:js.html.Element):Void;
	static function restoreOutline():Void;
	static var TRANSFORM : String;
	static var TRANSITION : String;
	static var TRANSITION_END : String;
}