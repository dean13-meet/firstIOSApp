//
//  BrowserViewController.m
//  emptyApp
//
//  Created by Dean Leitersdorf on 6/21/14.
//  Copyright (c) 2014 Dean Leitersdorf. All rights reserved.
//

#import "BrowserViewController.h"

@interface BrowserViewController ()

@end

@implementation BrowserViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self openPage:@"http://www.google.com"];
    [background setImage:[UIImage imageNamed:@"background.png"]];
    url.delegate = self;
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onSingleTap:)];
    tap.numberOfTapsRequired = 1;
    tap.delegate = self;
    
    [self.webViewer addGestureRecognizer:tap];
}
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    printf("1");
    return YES;
}
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    printf("2");
    return YES;
}
- (void)onSingleTap:(UITapGestureRecognizer*)sender {
    
    closedByReturn = false;
    [url resignFirstResponder];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    closedByReturn = true;
    [url resignFirstResponder];
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    printf("HERE");
    closedByReturn = false;
    [url resignFirstResponder];
}

- (IBAction)GO:(id)sender {
    /*UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"closedByReturn" message:[NSString stringWithFormat:@"%hhd",closedByReturn] delegate:nil
                          cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alert show];*/
    if([sender isEqual:url]&&!closedByReturn)return;
    [self openPage:url.text];
    [url resignFirstResponder];
}
-(void)openPage:(NSString*) urlText{
    if([urlText  rangeOfString: @"http://"].location==NSNotFound){
        urlText = [NSString stringWithFormat:@"http://%@",urlText];
    }
  
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlText]]];
}
@end
