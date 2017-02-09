//
//  TweetViewController.h
//  TwitterSearchApp
//
//  Created by Vlad on 09.02.17.
//  Copyright © 2017 Vlad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <TwitterKit/TwitterKit.h>

@interface TweetViewController : TWTRTimelineViewController

@property (strong, nonatomic) NSString *searchQuery;

@end
