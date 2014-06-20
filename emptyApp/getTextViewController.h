//
//  getTextViewController.h
//  emptyApp
//
//  Created by Dean Leitersdorf on 6/14/14.
//  Copyright (c) 2014 Dean Leitersdorf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface getTextViewController : UIViewController{
    
    IBOutlet UILabel *lbl;
    IBOutlet UITextField *input;
    IBOutlet UIButton *button;
    
    IBOutlet UISwitch *switcher;
    BOOL closedByReturn;
}
- (IBAction)btnPressed:(id)sender;
- (BOOL)textFieldShouldReturn:(UITextField *)textField;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end
