//
//  PickerViewController.h
//  Exercise
//
//  Created by Ryan Flores on 4/12/13.
//  Copyright (c) 2013 JHON RYAN FLORES. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>
{
    
    IBOutlet UIPickerView *pickerView;
    __weak IBOutlet UISwitch *imageSwitcher;
    NSMutableArray *imagesArray;
    IBOutlet UIButton *tabBarViewButton;
    IBOutlet UISlider *mySlider;
    int imgNum;
}
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) IBOutlet UISlider *mySlider;

- (IBAction) sliderValueChanged:(id)sender;
-(void)imageClicked:(UITapGestureRecognizer *)tapGest;
-  (IBAction)buttonTabBar:(id)sender;

@end
