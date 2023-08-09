package leaflet.control;

@:jsRequire("leaflet", "Control.Scale") extern class Scale extends leaflet.Control {
	function new(?options:ScaleOptions);
	function setPosition(position:leaflet.ControlPosition):Scale;
	function addTo(map:leaflet.Map_):Scale;
	function remove():Scale;
	static var prototype : Scale;
}