package leaflet;

import leaflet.*;

// Déclaration de l'externe pour Leaflet
@:native('L') extern class L {
    // Méthode pour créer une carte Leaflet
    @:overload(function(element:js.html.Element, ?options:MapOptions):Map_{})
    public static function map(elementId:String, ?options:MapOptions):Map_;

    // Méthode pour créer une icône personnalisée
    public static function icon(options:IconOptions):Icon<IconOptions>;

    // Méthode pour créer un objet LatLng
    public static function latLng(lat:Float, lng:Float):LatLng;

    // Méthode pour créer un marqueur (marker) Leaflet
    @:overload(function(coords:Array<Float>, ?options:MarkerOptions):Marker<MarkerOptions>{})
    public static function marker(coords:LatLng, ?options:MarkerOptions):Marker<MarkerOptions>;

    // Méthode pour ajouter une couche de tuiles (tile layer) à la carte
    public static function tileLayer(tileUrl:String, options:TileLayerOptions):TileLayer;
}