//
//  SegmentViewController.m
//  Exercise
//
//  Created by Ryan Flores on 4/15/13.
//  Copyright (c) 2013 JHON RYAN FLORES. All rights reserved.
//

#import "SegmentViewController.h"

@interface SegmentViewController ()

@end

@implementation SegmentViewController
@synthesize imageNum;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        if (self){
            UITabBarItem *tb1 = [self tabBarItem];
            [tb1 setTitle:@"Segmented Controller"];
        }
    }
    return self;
}

-(IBAction)changeSeg:(id)sender
{
    if(segmentController.selectedSegmentIndex == 0){
		[imageNum setImage:[UIImage imageNamed:@"one.png"]];
	}
	if(segmentController.selectedSegmentIndex == 1){
        [imageNum setImage:[UIImage imageNamed:@"two.png"]];
	}
    if(segmentController.selectedSegmentIndex == 2){
        [imageNum setImage:[UIImage imageNamed:@"three.png"]];
	}
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)viewDidUnload
{
    segmentController = nil;
    [self setImageNum:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
