//
//  KMViewController.h
//  ToDo
//
//  Created by Kabir Mahal on 9/24/13.
//  Copyright (c) 2013 Kabir Mahal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChangeValueDelegate.h"

@interface KMViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, ChangeValueDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) NSMutableArray *myArray;
@property (strong, nonatomic) NSString *updated;

- (IBAction)addToDo:(id)sender;

@end
