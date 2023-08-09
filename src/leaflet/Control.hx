package leaflet;

@:jsRequire("leaflet", "Control") extern class Control extends Class_ {
	function new(?options:ControlOptions);
	function getPosition():ControlPosition;
	function setPosition(position:ControlPosition):Control;
	function getContainer():Null<js.html.Element>;
	function addTo(map:Map_):Control;
	function remove():Control;
	@:optional
	function onAdd(map:Map_):js.html.Element;
	@:optional
	function onRemove(map:Map_):Void;
	var options : ControlOptions;
	static var prototype : Control;
	static function extend<T>(props:T):Dynamic;
}