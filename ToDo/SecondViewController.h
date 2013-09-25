//
//  SecondViewController.h
//  ToDo
//
//  Created by Kabir Mahal on 9/24/13.
//  Copyright (c) 2013 Kabir Mahal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChangeValueDelegate.h"

@interface SecondViewController : UIViewController

@property (strong, nonatomic) id <ChangeValueDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *secondTextField;

- (IBAction)secondChangeValue:(id)sender;
- (IBAction)secondCancelChange:(id)sender;


@end
