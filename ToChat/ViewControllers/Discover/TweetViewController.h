//
//  TweetViewController.h
//  Step-it-up
//
//  Created by syfll on 15/8/2.
//  Copyright © 2015年 JFT0M. All rights reserved.
//

#import "BaseViewController.h"
#import "UserInfoViewController.h"
#import "LikersViewController.h"
#import "TweetDetailViewController.h"
#import "UIMessageInputView.h"

#import "Tweet.h"
#import "Tweet+Size.h"
#import "Tweets.h"
#import "TweetCell.h"
#import "ODRefreshControl.h"
#import "DWBubbleMenuButton.h"



@interface TweetViewController : UIViewController

/// 展示Tweet（动态）用的
@property (nonatomic, strong) UITableView *myTableView;
/// 管理Tweet（动态）用的
@property (nonatomic, strong) Tweets *myTweets;
/// 输入框
@property (nonatomic, strong) UIMessageInputView *myMsgInputView;

@property (nonatomic, strong) ODRefreshControl *refreshControl;

@property (nonatomic, strong) DWBubbleMenuButton *upMenuView;

@end
