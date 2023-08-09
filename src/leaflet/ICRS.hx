package leaflet;

typedef ICRS = {
	function latLngToPoint(latlng:LatLngExpression, zoom:Float):Point;
	function pointToLatLng(point:PointExpression, zoom:Float):LatLng;
	function project(latlng:ts.AnyOf2<LatLngLiteral, LatLng>):Point;
	function unproject(point:PointExpression):LatLng;
	function scale(zoom:Float):Float;
	function zoom(scale:Float):Float;
	function getProjectedBounds(zoom:Float):Bounds;
	function distance(latlng1:LatLngExpression, latlng2:LatLngExpression):Float;
	function wrapLatLng(latlng:ts.AnyOf2<LatLngLiteral, LatLng>):LatLng;
	@:optional
	var code : String;
	@:optional
	var wrapLng : ts.Tuple2<Float, Float>;
	@:optional
	var wrapLat : ts.Tuple2<Float, Float>;
	var infinite : Bool;
};