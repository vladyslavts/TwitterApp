//
//  ViewController.m
//  TwitterSearchApp
//
//  Created by Vlad on 09.02.17.
//  Copyright © 2017 Vlad. All rights reserved.
//

#import "ViewController.h"
#import "TweetViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"Tweets Search";
    [self.tagField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    //[textField resignFirstResponder];
    
    TweetViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"tweets"];
    vc.searchQuery = [NSString stringWithFormat:@"#%@", self.tagField.text];
    [self.navigationController pushViewController:vc animated:YES];
    
    return YES;
}

@end
