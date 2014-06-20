//
//  SecondViewController.m
//  emptyApp
//
//  Created by Dean Leitersdorf on 6/17/14.
//  Copyright (c) 2014 Dean Leitersdorf. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    // Do any additional setup after loading the view.
    
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

- (IBAction)goBack:(id)sender {
   //[self performSegue:@"F12"];
    // [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)performSegue:(NSString*)str{
    [self performSegueWithIdentifier:str sender:self];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"F12"]){
        UIViewController *v = [segue destinationViewController];
   //    [self dismissViewControllerAnimated:NO completion:nil];
       v = self;
        
    }
}



- (IBAction)selectionChanged:(id)sender {
    
    int n = segmentedControl.selectedSegmentIndex;
    NSString *str = [NSString stringWithFormat:@"%i", n];
   printf("%s", [str cStringUsingEncoding:NSUTF8StringEncoding]);
    switch (n) {
        case 0:
            labelOfSegmented.text = @"FIRST";
            break;
            
        default:
            labelOfSegmented.text = @"IDK";
            break;
    }
}
@end
