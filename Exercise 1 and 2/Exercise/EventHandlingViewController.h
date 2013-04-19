//
//  EventHandlingViewController.h
//  iOSExercises
//
//  Created by John Mark G. Luyun on 4/17/13.
//  Copyright (c) 2013 John Mark G. Luyun. All rights reserved.
//

#import <UIKit/UIKit.h>
#define BALL_RADIUS 50


@interface EventHandlingViewController : UIViewController <UIAccelerometerDelegate>
{
    float valueX;
    float valueY;
    __weak IBOutlet UIImageView *ball1;
    
}
@end
