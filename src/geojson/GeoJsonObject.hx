package geojson;

/**
	The base GeoJSON object.
	https://tools.ietf.org/html/rfc7946#section-3
	The GeoJSON specification also allows foreign members
	(https://tools.ietf.org/html/rfc7946#section-6.1)
	Developers should use "&" type in TypeScript or extend the interface
	to add these foreign members.
**/
typedef GeoJsonObject = {
	/**
		Specifies the type of GeoJSON object.
	**/
	var type : String;
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