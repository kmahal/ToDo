//
//  KMViewController.m
//  ToDo
//
//  Created by Kabir Mahal on 9/24/13.
//  Copyright (c) 2013 Kabir Mahal. All rights reserved.
//

#import "KMViewController.h"
#import "SecondViewController.h"

@interface KMViewController ()
{
    SecondViewController *secondVC;
    int holder;
}

@end

@implementation KMViewController

@synthesize textField, myTableView, myArray, updated;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    myArray = [[NSMutableArray alloc] init];
    
    myTableView.delegate = self;
    myTableView.dataSource = self;
    
    secondVC = [[SecondViewController alloc] init];

    
    secondVC.delegate = self;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [myTableView dequeueReusableCellWithIdentifier:@"abc"];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"abc"];
    }
    
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    
    cell.textLabel.text = myArray[indexPath.row];
    
    return cell;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [myArray count];
    
}


- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"test");
    
    //UIView *editText = [[UIView alloc] initWithFrame:CGRectMake(80, 100, 160, 80)];
    
    //secondVC = [[SecondViewController alloc] init];
    [self presentViewController:secondVC animated:YES completion:nil];
    

    //myArray[indexPath.row] = updated;
    
    holder = indexPath.row;
        
}

- (IBAction)addToDo:(id)sender {
    
    [myArray addObject:textField.text];
    [myTableView reloadData];
    [textField resignFirstResponder];
    
}



-(void)newValue:(NSString *)val{
    myArray[holder] = [NSString stringWithString:val];
    [myTableView reloadData];
    NSLog(@"new val");

    
}

@end
