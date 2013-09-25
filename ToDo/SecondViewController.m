//
//  SecondViewController.m
//  ToDo
//
//  Created by Kabir Mahal on 9/24/13.
//  Copyright (c) 2013 Kabir Mahal. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize secondTextField, delegate;

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
    

}


- (IBAction)secondChangeValue:(id)sender {
    
    [delegate newValue:secondTextField.text];
    
    [self dismissViewControllerAnimated:YES completion:nil];

    secondTextField.text = @"";
    
    
    

}

- (IBAction)secondCancelChange:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    secondTextField.text = @"";

    
}
@end
