package leaflet;

typedef InvalidateSizeOptions = {
	@:optional
	var debounceMoveend : Bool;
	@:optional
	var pan : Bool;
	@:optional
	var animate : Bool;
	@:optional
	var duration : Float;
	@:optional
	var easeLinearity : Float;
	@:optional
	var noMoveStart : Bool;
};