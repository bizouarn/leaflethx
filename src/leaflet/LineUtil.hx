package leaflet;

@:jsRequire("leaflet", "LineUtil") @valueModuleOnly extern class LineUtil {
	static function simplify(points:Array<Point>, tolerance:Float):Array<Point>;
	static function pointToSegmentDistance(p:Point, p1:Point, p2:Point):Float;
	static function closestPointOnSegment(p:Point, p1:Point, p2:Point):Point;
	static function isFlat(latlngs:Array<LatLngExpression>):Bool;
	static function clipSegment(a:Point, b:Point, bounds:Bounds, ?useLastCode:Bool, ?round:Bool):ts.AnyOf2<Bool, ts.Tuple2<Point, Point>>;
	static function polylineCenter(latlngs:Array<LatLngExpression>, crs:CRS):LatLng;
}