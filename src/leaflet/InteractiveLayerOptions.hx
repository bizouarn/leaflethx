package leaflet;

typedef InteractiveLayerOptions = {
	@:optional
	var interactive : Bool;
	@:optional
	var bubblingMouseEvents : Bool;
	@:optional
	var pane : String;
	@:optional
	var attribution : String;
};