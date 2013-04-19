//
//  EventHandlingViewController.m
//  iOSExercises
//
//  Created by John Mark G. Luyun on 4/17/13.
//  Copyright (c) 2013 John Mark G. Luyun. All rights reserved.
//

#import "EventHandlingViewController.h"

@interface EventHandlingViewController ()

@end

@implementation EventHandlingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UITabBarItem *tabTitle = [self tabBarItem];
        [tabTitle setTitle:@"Accelerometer"];
        }
    return self;
}

-(void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration {
    
    valueX = acceleration.x*40.0;
    valueY = acceleration.y*40.0;
    
    int newX = (int)(ball1.center.x + valueX);
    
    if (newX > 320 - BALL_RADIUS)
        newX = 320 - BALL_RADIUS;
    
    if (newX < 0 + BALL_RADIUS)
        newX = 0 + BALL_RADIUS;
    
    int newY = (int)(ball1.center.y-valueY);
    
    if (newY > (435 - BALL_RADIUS))
        newY = (435 - BALL_RADIUS);
    
    if (newY < 0 + BALL_RADIUS)
        newY = 0 + BALL_RADIUS;
    
    CGPoint newCenter = CGPointMake(newX, newY);
    ball1.center = newCenter;
    
}

- (void)viewDidLoad {
    
    [[UIAccelerometer sharedAccelerometer] setUpdateInterval:1.0/30.0];
    [[UIAccelerometer sharedAccelerometer] setDelegate:self];
    [super viewDidLoad];
}

-(void)dealloc
{
    [[UIAccelerometer sharedAccelerometer]setDelegate:nil];
    
}
-(void)viewDidUnload
{
    ball1 = nil;
    //button = nil;
    [[UIAccelerometer sharedAccelerometer]setDelegate:nil];
}


@end
