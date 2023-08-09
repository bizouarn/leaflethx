package leaflet;

typedef DoneCallback = ts.AnyOf3<() -> Void, (error:js.lib.Error) -> Void, (error:js.lib.Error, tile:js.html.Element) -> Void>;