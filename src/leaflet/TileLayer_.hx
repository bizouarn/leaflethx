package leaflet;

@:jsRequire("leaflet", "tileLayer") @valueModuleOnly extern class TileLayer_ {
	@:selfCall
	static function call(urlTemplate:String, ?options:TileLayerOptions):TileLayer;
	static function wms(baseUrl:String, ?options:WMSOptions):leaflet.tilelayer.WMS;
}