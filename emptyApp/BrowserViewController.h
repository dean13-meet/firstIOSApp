//
//  BrowserViewController.h
//  emptyApp
//
//  Created by Dean Leitersdorf on 6/21/14.
//  Copyright (c) 2014 Dean Leitersdorf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BrowserViewController : UIViewController{
    
    IBOutlet UIWebView *webView;
    IBOutlet UIImageView *background;
    IBOutlet UITextField *url;
    BOOL closedByReturn;
}
- (IBAction)GO:(id)sender;
@property (strong, nonatomic) IBOutlet UIWebView *webViewer;


@end
