# SwiftKMLParser

Apple's Objective-C KMLParser updated to Swift Package Manager.


## Usage
```
import KMLParser

// parse KML
guard let path = Bundle.main.path(forResource: "fileName", ofType: "kml") else { fatalError() }
let kmlURL = URL(fileURLWithPath: path)
guard let parser = KMLParser(url: kmlURL) else { fatalError() }
parser.parseKML()

// Display overlays on mapView
guard let overlays = overlays as? [MKOverlay] else { fatalError() }
mapView.addOverlays(overlays)

func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
    guard let renderer = parser.renderer(overlay) else { fatalError() }
    return renderer
}

```
