package geojson;

/**
	A feature object which contains a geometry and associated properties.
	https://tools.ietf.org/html/rfc7946#section-3.2
**/
typedef Feature<G, P> = {
	/**
		Specifies the type of GeoJSON object.
	**/
	var type : String;
	/**
		The feature's geometry
	**/
	var geometry : G;
	/**
		A value that uniquely identifies this feature in a
		https://tools.ietf.org/html/rfc7946#section-3.2.
	**/
	@:optional
	var id : ts.AnyOf2<String, Float>;
	/**
		Properties associated with this feature.
	**/
	var properties : P;
	/**
		Bounding box of the coordinate range of the object's Geometries, Features, or Feature Collections.
		The value of the bbox member is an array of length 2*n where n is the number of dimensions
		represented in the contained geometries, with all axes of the most southwesterly point
		followed by all axes of the more northeasterly point.
		The axes order of a bbox follows the axes order of geometries.
		https://tools.ietf.org/html/rfc7946#section-5
	**/
	@:optional
	var bbox : BBox;
};