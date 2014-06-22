//
//  SecondViewController.h
//  emptyApp
//
//  Created by Dean Leitersdorf on 6/17/14.
//  Copyright (c) 2014 Dean Leitersdorf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController{
    
    IBOutlet UIButton *backButton;
    
    IBOutlet UISegmentedControl *segmentedControl;
    IBOutlet UILabel *labelOfSegmented;
    IBOutlet UISlider *slider;
    IBOutlet UIButton *goToBrowserButton;
}
- (IBAction)goBack:(id)sender;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
- (IBAction)selectionChanged:(id)sender;
- (IBAction)sliderChanged:(id)sender;
- (IBAction)goToBrowser:(id)sender;


@end
