//
//  TweetViewController.m
//  TwitterSearchApp
//
//  Created by Vlad on 09.02.17.
//  Copyright © 2017 Vlad. All rights reserved.
//

#import "TweetViewController.h"

@interface TweetViewController ()

@end

@implementation TweetViewController

static NSInteger tweetsPerRequest = 25;

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = [NSString stringWithFormat:@"%@", self.searchQuery];
    
    TWTRAPIClient *client = [[TWTRAPIClient alloc] init];
    
    self.dataSource = [[TWTRSearchTimelineDataSource alloc] initWithSearchQuery:self.searchQuery
                                                                      APIClient:client
                                                                   languageCode:@""
                                                            maxTweetsPerRequest:tweetsPerRequest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
