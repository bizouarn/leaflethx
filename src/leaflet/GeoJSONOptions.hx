package leaflet;

typedef GeoJSONOptions<P, G> = {
	/**
		A Function defining how GeoJSON points spawn Leaflet layers.
		It is internally called when data is added, passing the GeoJSON point
		feature and its LatLng.
		
		The default is to spawn a default Marker:
		
		```
		function(geoJsonPoint, latlng) {
		     return L.marker(latlng);
		}
		```
	**/
	@:optional
	function pointToLayer(geoJsonPoint:geojson.Feature<geojson.Point, P>, latlng:LatLng):Layer;
	/**
		PathOptions or a Function defining the Path options for styling GeoJSON lines and polygons,
		called internally when data is added.
		
		The default value is to not override any defaults:
		
		```
		function (geoJsonFeature) {
		     return {}
		}
		```
	**/
	@:optional
	var style : ts.AnyOf2<PathOptions, StyleFunction<P>>;
	/**
		A Function that will be called once for each created Feature, after it
		has been created and styled. Useful for attaching events and popups to features.
		
		The default is to do nothing with the newly created layers:
		
		```
		function (feature, layer) {}
		```
	**/
	@:optional
	function onEachFeature(feature:geojson.Feature<G, P>, layer:Layer):Void;
	/**
		A Function that will be used to decide whether to show a feature or not.
		
		The default is to show all features:
		
		```
		function (geoJsonFeature) {
		     return true;
		}
		```
	**/
	@:optional
	function filter(geoJsonFeature:geojson.Feature<G, P>):Bool;
	/**
		A Function that will be used for converting GeoJSON coordinates to LatLngs.
		The default is the coordsToLatLng static method.
	**/
	@:optional
	function coordsToLatLng(coords:ts.AnyOf2<ts.Tuple3<Float, Float, Float>, ts.Tuple2<Float, Float>>):LatLng;
	/**
		Whether default Markers for "Point" type Features inherit from group options.
	**/
	@:optional
	var markersInheritOptions : Bool;
	@:optional
	var interactive : Bool;
	@:optional
	var bubblingMouseEvents : Bool;
	@:optional
	var pane : String;
	@:optional
	var attribution : String;
};