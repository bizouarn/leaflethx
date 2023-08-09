package leaflet.control;

@:jsRequire("leaflet", "Control.Attribution") extern class Attribution extends leaflet.Control {
	function new(?options:AttributionOptions);
	function setPrefix(prefix:ts.AnyOf2<String, Bool>):Attribution;
	function addAttribution(text:String):Attribution;
	function removeAttribution(text:String):Attribution;
	function setPosition(position:leaflet.ControlPosition):Attribution;
	function addTo(map:leaflet.Map_):Attribution;
	function remove():Attribution;
	static var prototype : Attribution;
}