//
//  PickerViewController.m
//  Exercise
//
//  Created by Ryan Flores on 4/12/13.
//  Copyright (c) 2013 JHON RYAN FLORES. All rights reserved.
//

#import "PickerViewController.h"
#import "SegmentViewController.h"
#import "ActionViewController.h"
#import "EventHandlingViewController.h"

@implementation PickerViewController
@synthesize myLabel;
@synthesize webView;
@synthesize imageView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view]setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
    imagesArray = [[NSMutableArray alloc] initWithObjects:@"Mark",@"Ardeus",@"Franz", nil];
    
    [imageSwitcher addTarget:self action:@selector(readSwitchOnOff:) forControlEvents:UIControlEventValueChanged];

    
    UITapGestureRecognizer *fingers = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageClicked:)];
    [fingers setNumberOfTapsRequired:1];
    [fingers setNumberOfTouchesRequired:1];
    [imageView addGestureRecognizer:fingers];
    
    [imageView setImage:[UIImage imageNamed:@"Mark.png"]];
    

}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
    
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [imagesArray count];
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [imagesArray objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (row == 0)
    {
        [imageView setImage:[UIImage imageNamed:@"Mark.png"]];
          if (imageSwitcher.on) {
            [imageView setAlpha:1];
        } else {
            [imageView setAlpha:0];
        }
        imgNum = 0;
    } else if (row == 1)
    {
        [imageView setImage:[UIImage imageNamed:@"aj.png"]];
        if (imageSwitcher.on) {
            [imageView setAlpha:1];
        } else {
            [imageView setAlpha:0];
        }
        imgNum = 1;
    } else if (row == 2)
    {
        [imageView setImage:[UIImage imageNamed:@"franz.png"]];
        if (imageSwitcher.on) {
            [imageView setAlpha:1];
        } else {
            [imageView setAlpha:0];
        }
        imgNum = 2;
    }
    
}

-(void)imageClicked:(UITapGestureRecognizer *)tapGest
{
    if (imgNum == 0){
        //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.facebook.com/markluyun?fref=ts"]];
        NSString *fullURL = @"http://www.facebook.com/markluyun?fref=ts";
        NSURL *url = [NSURL URLWithString:fullURL];
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        [webView loadRequest:requestObj];
    } else if (imgNum == 2){
        //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.facebook.com/franzcarelle?fref=ts"]];
        NSString *fullURL = @"http://www.facebook.com/franzcarelle?fref=ts";
        NSURL *url = [NSURL URLWithString:fullURL];
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        [webView loadRequest:requestObj];
    } else if (imgNum == 1){
        //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.facebook.com/smolderbil?fref=tss"]];
        NSString *fullURL = @"http://www.facebook.com/smolderbil?fref=tss";
        NSURL *url = [NSURL URLWithString:fullURL];
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        [webView loadRequest:requestObj];
    }
}

-(void)readSwitchOnOff:(UISwitch *)sender
{
    if (imageSwitcher.on) {
        [imageView setAlpha:1];
    } else {
        [imageView setAlpha:0];
    }
}

- (IBAction) sliderValueChanged:(UISlider *)sender
{
    //[imageView setAlpha:[sender value]];
    [myLabel setText:[NSString stringWithFormat:@"%d",(int)[sender value]]];
}

- (void)viewDidUnload
{
    pickerView = nil;
    [self setImageView:nil];
    tabBarViewButton = nil;
    mySlider = nil;
    webView = nil;
    [self setWebView:nil];
    [self setMyLabel:nil];
    [super viewDidUnload];
}

-(IBAction)buttonTabBar:(id)sender
{    
    SegmentViewController *segmentViewController = [[SegmentViewController alloc] init];
    ActionViewController  *actionViewController = [[ActionViewController alloc] init];
    EventHandlingViewController  *eventHandlingViewController = [[EventHandlingViewController alloc] init];
    
    UITabBarController *tabBarController= [[UITabBarController alloc] init];
    NSArray *viewControllers = [NSArray arrayWithObjects:segmentViewController,actionViewController,eventHandlingViewController, nil];
   
    [tabBarController setViewControllers:viewControllers];
    [[self navigationController] pushViewController:tabBarController animated:YES];
    
    
}

@end
