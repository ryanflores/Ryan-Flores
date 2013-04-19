//
//  SegmentViewController.h
//  Exercise
//
//  Created by Ryan Flores on 4/15/13.
//  Copyright (c) 2013 JHON RYAN FLORES. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegmentViewController : UIViewController
{
    
    IBOutlet UISegmentedControl *segmentController;
}
@property (strong, nonatomic) IBOutlet UIImageView *imageNum;

-(IBAction)changeSeg:(id)sender;

@end
