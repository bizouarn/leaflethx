package leaflet;

typedef WMSParams = {
	@:optional
	var format : String;
	var layers : String;
	@:optional
	var request : String;
	@:optional
	var service : String;
	@:optional
	var styles : String;
	@:optional
	var version : String;
	@:optional
	var transparent : Bool;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
};