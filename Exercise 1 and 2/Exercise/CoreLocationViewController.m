//
//  CoreLocationViewController.m
//  iOSExercises
//
//  Created by John Mark G. Luyun on 4/16/13.
//  Copyright (c) 2013 John Mark G. Luyun. All rights reserved.
//

#import "CoreLocationViewController.h"

@implementation CoreLocationViewController
@synthesize locationManager;
@synthesize locationLabelOne;
@synthesize locationLabelTwo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setLocationManager:[[CLLocationManager alloc] init]];
    [locationManager setDelegate:self];
    [locationManager setDistanceFilter:kCLDistanceFilterNone];
    [locationManager setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
    [locationManager startUpdatingLocation];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setLocationLabelOne:nil];
    [self setLocationLabelTwo:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    
    
    [locationLabelOne setText:[NSString stringWithFormat:@"%f", newLocation.coordinate.latitude]];
    
    [locationLabelTwo setText:[NSString stringWithFormat:@"%f", newLocation.coordinate.longitude]];
}

- (IBAction)showMap:(id)sender
{
    MapViewController *mapViewController = [[MapViewController alloc]init];
    [[self navigationController]pushViewController:mapViewController animated:YES];
}
@end
