//
//  getTextViewController.m
//  emptyApp
//
//  Created by Dean Leitersdorf on 6/14/14.
//  Copyright (c) 2014 Dean Leitersdorf. All rights reserved.
//

#import "getTextViewController.h"

@interface getTextViewController ()

@end

@implementation getTextViewController

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
    [[button layer] setBorderWidth:2.0f];
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


- (IBAction)btnPressed:(id)sender {
    printf("HEY HERE");
    if([sender isEqual:input]&&!closedByReturn)return;
    NSString *theTestInputted = input.text;

        lbl.text = [NSString stringWithFormat:@"%@%@%@", @"Hi ", theTestInputted, @", have a good day"];
    if([input isEditing]){
        printf("EDITING");
        [input resignFirstResponder];}
    if(switcher.isOn){
        [self performSegue:@"F21"];}
    
}

- (IBAction)unwindFromViewController:(UIStoryboardSegue *)segue
{
    //empty implementation
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    printf("HMM");
    closedByReturn = TRUE;
    [textField resignFirstResponder];
    return NO;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    closedByReturn = FALSE;
    [input resignFirstResponder];
}
-(void)performSegue:(NSString*)str{
    [self performSegueWithIdentifier:str sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"F21"]){
        UIViewController *v = [segue destinationViewController];
       //[self dismissViewControllerAnimated:YES completion:nil];
        v = self;
        
    }
}

@end
