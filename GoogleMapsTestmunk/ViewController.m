//
//  AppDelegate.h
//  Google Maps Testmunk Demo
//
//  Created by Yegor Silyutin 7/1/2015
//

#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>


@interface ViewController ()

@end

@implementation ViewController {
	GMSMapView *mapView_;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	
    
	GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:37.8199286
															longitude:-122.4782551
																 zoom:10];	
	GoogleMapsView.myLocationEnabled = YES;
	GoogleMapsView.settings.myLocationButton = YES;
	GoogleMapsView.camera = camera;
	GoogleMapsView.delegate = self;
	
// create marker
	GMSMarker *marker = [[GMSMarker alloc] init];
	marker.position = CLLocationCoordinate2DMake(37.8199286, -122.4782551);
	marker.title = @"Golden Gate Bridge";
	marker.snippet = @"San Francisco";
	marker.map = GoogleMapsView;
	GoogleMapsView.selectedMarker = marker;
	
	
}

- (void)mapView:(GMSMapView *)mapView didLongPressAtCoordinate:(CLLocationCoordinate2D)coordinate {
	GMSMarker *testmunkMarker = [[GMSMarker alloc] init];
	testmunkMarker.position = coordinate;
	testmunkMarker.title = @"Great job!";
	testmunkMarker.map = GoogleMapsView;
	GoogleMapsView.selectedMarker = testmunkMarker;
}

// show Testmunk
- (IBAction) showTestmunk:(id)sender {
	
	GMSCameraPosition *testmunk = [GMSCameraPosition cameraWithLatitude:37.330748 longitude:-122.047021 zoom:10];
	
	[GoogleMapsView animateToCameraPosition:testmunk];
	
	GMSMarker *testmunkMarker = [[GMSMarker alloc] init];
	testmunkMarker.position = CLLocationCoordinate2DMake(37.330748, -122.047021);
	testmunkMarker.title = @"Testmunk";
	testmunkMarker.map = GoogleMapsView;
	GoogleMapsView.selectedMarker = testmunkMarker;
}


- (void) setMapView:(GMSMapView *)mapView {
    if (!mapView) {
        mapView = [[GMSMapView alloc] initWithFrame:mapView.bounds];
    }
    GoogleMapsView = mapView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end
