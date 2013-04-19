//
//  MapViewController.h
//  iOSExercises
//
//  Created by John Mark G. Luyun on 4/16/13.
//  Copyright (c) 2013 John Mark G. Luyun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreLocationViewController.h"
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate>
{
    CLLocationManager *locationManager;
    __weak IBOutlet MKMapView *worldView;
    
}
@end
