package geojson;

/**
	Union of GeoJSON objects.
**/
typedef GeoJSON = ts.AnyOf9<Point, MultiPoint, LineString, MultiLineString, Polygon, MultiPolygon, GeometryCollection<Geometry>, Feature<Geometry, GeoJsonProperties>, FeatureCollection<Geometry, GeoJsonProperties>>;