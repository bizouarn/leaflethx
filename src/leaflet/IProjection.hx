package leaflet;

typedef IProjection = {
	function project(latlng:ts.AnyOf2<LatLngLiteral, LatLng>):Point;
	function unproject(point:PointExpression):LatLng;
	var bounds : Bounds;
};