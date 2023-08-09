package geojson;

/**
	MultiPolygon geometry object.
	https://tools.ietf.org/html/rfc7946#section-3.1.7
**/
typedef MultiPolygon = {
	/**
		Specifies the type of GeoJSON object.
	**/
	var type : String;
	var coordinates : Array<Array<Array<Position>>>;
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