//
//  ActionViewController.m
//  Exercise
//
//  Created by Ryan Flores on 4/15/13.
//  Copyright (c) 2013 JHON RYAN FLORES. All rights reserved.
//

#import "ActionViewController.h"
#import "ItemsViewController.h"
#import "CoreLocationViewController.h"

@implementation ActionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        if (self){
            UITabBarItem *tb1 = [self tabBarItem];
            [tb1 setTitle:@"The Dark Side"];
        }
    }
    return self;
}

-(IBAction)showActionSheet:(id)sender
{
    
    NSString *actionSheetTitle = @"Action Sheet";
   // NSString *OK = @"OK";
    NSString *other1 = @"URL Connection";
    NSString *other2 = @"Core Location";
    NSString *cancelTitle = @"Cancel Button";
    UIActionSheet *actSheet = [[UIActionSheet alloc]
                               initWithTitle:actionSheetTitle
                               delegate:self
                               cancelButtonTitle:cancelTitle
                               destructiveButtonTitle:nil
                               otherButtonTitles:other1, other2, nil];
    [actSheet showInView:self.view];
    [actSheet showFromTabBar:self.tabBarController.tabBar];

}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{    
    //Get the name of the current pressed button
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
   /* if ([buttonTitle isEqualToString:@"OK"]) {
        
    }*/
    if ([buttonTitle isEqualToString:@"URL Connection"]) {
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]];
        NSURLConnection *conn = [[NSURLConnection alloc] init];
        (void)[conn initWithRequest:request delegate:self];
    }
    if ([buttonTitle isEqualToString:@"Core Location"]) {
        CoreLocationViewController *coreLocationViewController = [[CoreLocationViewController alloc] init];
        [[self navigationController] pushViewController:coreLocationViewController animated:YES];
    }
    if ([buttonTitle isEqualToString:@"Cancel Button"]) {
       
    }

}


- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    _responseData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [_responseData appendData:data];
}

- (NSCachedURLResponse *)connection:(NSURLConnection *)connection
                  willCacheResponse:(NSCachedURLResponse*)cachedResponse {
    return nil;
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    [webView loadData:_responseData MIMEType: @"text/html" textEncodingName: @"UTF-8" baseURL:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"WELCOME!!"
                                                      message:@"to the Dark Side"
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
    [message show];
    [screamerImage setImage:[UIImage imageNamed:@"scream.png"]];
}

- (void)viewDidUnload
{
    screamerImage = nil;
    coreButton = nil;
    webView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
