//
//  BNRDateCreatedViewController.m
//  Homepwner
//
//  Created by Minjian Wang on 4/23/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import "BNRDateCreatedViewController.h"
#import "BNRItem.h"

@interface BNRDateCreatedViewController ()

@property (weak, nonatomic) IBOutlet UIDatePicker *pickedDate;

@end

@implementation BNRDateCreatedViewController

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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.pickedDate.date = self.item.dateCreated;
    
    static NSDateFormatter *dateFormatter;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.dateStyle = NSDateFormatterMediumStyle;
        dateFormatter.timeStyle = NSDateFormatterNoStyle;
    }
    
    self.navigationItem.title = [dateFormatter stringFromDate:self.item.dateCreated];
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    BNRItem *item = self.item;
    item.dateCreated = self.pickedDate.date;
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

@end
