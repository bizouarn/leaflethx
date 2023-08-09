package geojson;

/**
	Geometry object.
	https://tools.ietf.org/html/rfc7946#section-3
**/
typedef Geometry = ts.AnyOf7<Point, MultiPoint, LineString, MultiLineString, Polygon, MultiPolygon, GeometryCollection<Geometry>>;