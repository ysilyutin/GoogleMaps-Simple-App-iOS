//
//  AppDelegate.h
//  Google Maps Testmunk Demo
//
//  Created by Yegor Silyutin 7/1/2015
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController : UIViewController <GMSMapViewDelegate> {
	IBOutlet GMSMapView *GoogleMapsView;
	IBOutlet UILabel *superText;
}

-(IBAction) showTestmunk: (id) sender;

@end
