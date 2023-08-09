package geojson;

/**
	Bounding box
	https://tools.ietf.org/html/rfc7946#section-5
**/
typedef BBox = ts.AnyOf2<ts.Tuple4<Float, Float, Float, Float>, ts.Tuple6<Float, Float, Float, Float, Float, Float>>;