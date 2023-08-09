package leaflet;

typedef StyleFunction<P> = ts.AnyOf2<() -> PathOptions, (feature:geojson.Feature<geojson.Geometry, P>) -> PathOptions>;