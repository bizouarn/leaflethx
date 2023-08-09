package leaflet;

@:jsRequire("leaflet", "PolyUtil") @valueModuleOnly extern class PolyUtil {
	static function clipPolygon(points:Array<Point>, bounds:BoundsExpression, ?round:Bool):Array<Point>;
	static function polygonCenter(latlngs:Array<LatLngExpression>, crs:CRS):LatLng;
}