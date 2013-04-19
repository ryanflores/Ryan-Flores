//
//  ActionViewController.h
//  Exercise
//
//  Created by Ryan Flores on 4/15/13.
//  Copyright (c) 2013 JHON RYAN FLORES. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActionViewController : UIViewController <UIAlertViewDelegate,UIActionSheetDelegate,NSURLConnectionDelegate>
{
    
    IBOutlet UIImageView *screamerImage;
    IBOutlet UIButton *coreButton;
    __weak IBOutlet UIWebView *webView;
    NSMutableData *_responseData;
}

-(IBAction)showActionSheet:(id)sender;

@end
