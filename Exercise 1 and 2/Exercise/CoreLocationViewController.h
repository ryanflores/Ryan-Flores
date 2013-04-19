//
//  CoreLocationViewController.h
//  iOSExercises
//
//  Created by John Mark G. Luyun on 4/16/13.
//  Copyright (c) 2013 John Mark G. Luyun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "MapViewController.h"

@interface CoreLocationViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}
@property (retain, nonatomic) CLLocationManager *locationManager;
@property (retain, nonatomic) IBOutlet UILabel *locationLabelOne;
@property (retain, nonatomic) IBOutlet UILabel *locationLabelTwo;
- (IBAction)showMap:(id)sender;

@end
