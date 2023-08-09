package leaflet;

typedef LeafletEventHandlerFnMap = {
	@:optional
	dynamic function baselayerchange(event:LayersControlEvent):Void;
	@:optional
	dynamic function overlayadd(event:LayersControlEvent):Void;
	@:optional
	dynamic function overlayremove(event:LayersControlEvent):Void;
	@:optional
	dynamic function layeradd(event:LayerEvent):Void;
	@:optional
	dynamic function layerremove(event:LayerEvent):Void;
	@:optional
	dynamic function zoomlevelschange(event:LeafletEvent):Void;
	@:optional
	dynamic function unload(event:LeafletEvent):Void;
	@:optional
	dynamic function viewreset(event:LeafletEvent):Void;
	@:optional
	dynamic function load(event:LeafletEvent):Void;
	@:optional
	dynamic function zoomstart(event:LeafletEvent):Void;
	@:optional
	dynamic function movestart(event:LeafletEvent):Void;
	@:optional
	dynamic function zoom(event:LeafletEvent):Void;
	@:optional
	dynamic function move(event:LeafletEvent):Void;
	@:optional
	dynamic function zoomend(event:LeafletEvent):Void;
	@:optional
	dynamic function moveend(event:LeafletEvent):Void;
	@:optional
	dynamic function autopanstart(event:LeafletEvent):Void;
	@:optional
	dynamic function dragstart(event:LeafletEvent):Void;
	@:optional
	dynamic function drag(event:LeafletEvent):Void;
	@:optional
	dynamic function add(event:LeafletEvent):Void;
	@:optional
	dynamic function remove(event:LeafletEvent):Void;
	@:optional
	dynamic function loading(event:LeafletEvent):Void;
	@:optional
	dynamic function error(event:LeafletEvent):Void;
	@:optional
	dynamic function update(event:LeafletEvent):Void;
	@:optional
	dynamic function down(event:LeafletEvent):Void;
	@:optional
	dynamic function predrag(event:LeafletEvent):Void;
	@:optional
	dynamic function resize(event:ResizeEvent):Void;
	@:optional
	dynamic function popupopen(event:PopupEvent):Void;
	@:optional
	dynamic function popupclose(event:PopupEvent):Void;
	@:optional
	dynamic function tooltipopen(event:TooltipEvent):Void;
	@:optional
	dynamic function tooltipclose(event:TooltipEvent):Void;
	@:optional
	dynamic function locationerror(event:ErrorEvent):Void;
	@:optional
	dynamic function locationfound(event:LocationEvent):Void;
	@:optional
	dynamic function click(event:LeafletMouseEvent):Void;
	@:optional
	dynamic function dblclick(event:LeafletMouseEvent):Void;
	@:optional
	dynamic function mousedown(event:LeafletMouseEvent):Void;
	@:optional
	dynamic function mouseup(event:LeafletMouseEvent):Void;
	@:optional
	dynamic function mouseover(event:LeafletMouseEvent):Void;
	@:optional
	dynamic function mouseout(event:LeafletMouseEvent):Void;
	@:optional
	dynamic function mousemove(event:LeafletMouseEvent):Void;
	@:optional
	dynamic function contextmenu(event:LeafletMouseEvent):Void;
	@:optional
	dynamic function preclick(event:LeafletMouseEvent):Void;
	@:optional
	dynamic function keypress(event:LeafletKeyboardEvent):Void;
	@:optional
	dynamic function keydown(event:LeafletKeyboardEvent):Void;
	@:optional
	dynamic function keyup(event:LeafletKeyboardEvent):Void;
	@:optional
	dynamic function zoomanim(event:ZoomAnimEvent):Void;
	@:optional
	dynamic function dragend(event:DragEndEvent):Void;
	@:optional
	dynamic function tileunload(event:TileEvent):Void;
	@:optional
	dynamic function tileloadstart(event:TileEvent):Void;
	@:optional
	dynamic function tileload(event:TileEvent):Void;
	@:optional
	dynamic function tileabort(event:TileEvent):Void;
	@:optional
	dynamic function tileerror(event:TileErrorEvent):Void;
};