package leaflet;

import leaflet.*;
@:native('L') extern class L{
    @:overload(function(element:js.html.Element, ?options:MapOptions):Map_{})
    public static function map(elementId:String, ?options:MapOptions):Map_;
    public static function icon(options:IconOptions):Icon<IconOptions>;
    public static function latLng(lat:Float, lng:Float):Dynamic;
    @:overload(function(coords:Array<Float>,  ?options:MarkerOptions ):Marker<MarkerOptions> {})
    public static function marker(coords:LatLng, ?options:MarkerOptions ):Marker<MarkerOptions>;
    public static function tileLayer(tileUrl:String, options:TileLayerOptions ):TileLayer;
}
