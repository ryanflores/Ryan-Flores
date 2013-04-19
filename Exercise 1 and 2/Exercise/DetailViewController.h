//
//  DetailViewController.h
//  Exercise
//
//  Created by Ryan Flores on 4/12/13.
//  Copyright (c) 2013 JHON RYAN FLORES. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BNRItem;

@interface DetailViewController : UIViewController
{
    
    __weak IBOutlet UITextField *nameField;
    __weak IBOutlet UITextField *serialNumberField;
    __weak IBOutlet UITextField *valueField;
    __weak IBOutlet UILabel *dateLabel;

}
@property (nonatomic, strong) BNRItem *item;

@end
