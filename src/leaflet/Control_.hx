package leaflet;

@:jsRequire("leaflet", "control") @valueModuleOnly extern class Control_ {
	static function zoom(?options:leaflet.control.ZoomOptions):leaflet.control.Zoom;
	static function attribution(?options:leaflet.control.AttributionOptions):leaflet.control.Attribution;
	static function layers(?baseLayers:leaflet.control.LayersObject, ?overlays:leaflet.control.LayersObject, ?options:leaflet.control.LayersOptions):leaflet.control.Layers;
	static function scale(?options:leaflet.control.ScaleOptions):leaflet.control.Scale;
}