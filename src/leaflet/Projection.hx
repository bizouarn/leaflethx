package leaflet;

@:jsRequire("leaflet", "Projection") extern class Projection {
	function project(latlng:ts.AnyOf2<LatLngLiteral, LatLng>):Point;
	function unproject(point:PointExpression):LatLng;
	var bounds : Bounds;
	static final LonLat : Projection;
	static final Mercator : Projection;
	static final SphericalMercator : Projection;
}