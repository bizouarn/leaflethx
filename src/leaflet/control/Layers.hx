package leaflet.control;

@:jsRequire("leaflet", "Control.Layers") extern class Layers extends leaflet.Control {
	function new(?baseLayers:LayersObject, ?overlays:LayersObject, ?options:LayersOptions);
	function addBaseLayer(layer:leaflet.Layer, name:String):Layers;
	function addOverlay(layer:leaflet.Layer, name:String):Layers;
	function removeLayer(layer:leaflet.Layer):Layers;
	function expand():Layers;
	function collapse():Layers;
	function setPosition(position:leaflet.ControlPosition):Layers;
	function addTo(map:leaflet.Map_):Layers;
	function remove():Layers;
	static var prototype : Layers;
}