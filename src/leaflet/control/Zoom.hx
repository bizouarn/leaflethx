package leaflet.control;

@:jsRequire("leaflet", "Control.Zoom") extern class Zoom extends leaflet.Control {
	function new(?options:ZoomOptions);
	function setPosition(position:leaflet.ControlPosition):Zoom;
	function addTo(map:leaflet.Map_):Zoom;
	function remove():Zoom;
	static var prototype : Zoom;
}