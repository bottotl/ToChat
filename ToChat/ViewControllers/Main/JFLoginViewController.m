//
//  JFLoginViewController.m
//  ToChat
//
//  Created by syfll on 15/8/27.
//  Copyright (c) 2015年 JFT0M. All rights reserved.
//

#import "JFLoginViewController.h"
#import "AVOSCloud/AVUser.h"
#import "JFUserManager.h"

@interface JFLoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField  *userName;
@property (weak, nonatomic) IBOutlet UITextField  *password;

@end

@implementation JFLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 判断输入
    RACSignal *validUsernameSignal = [self.userName.rac_textSignal map:^id(NSString *userName) {
        return @([self isValidUsername:userName]);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

///
- (BOOL)isValidUsername:(NSString *)username {
    return username.length > 3;
}

- (BOOL)isValidPassword:(NSString *)password {
    return password.length > 3;
}
//- (IBAction)loginButtonClicked:(id)sender {
//    NSString *my_user_name = self.userName.text;
//    NSString *my_password = self.password.text;
//    
//    [[JFUserManager manager]signInWithUsernameInBackground:my_user_name Andpassword:my_password withBlock:^(JFUser *user, NSError *error) {
//        if (user != nil) {
//            //隐藏键盘
//            [self.view endEditing:YES];
//            //页面跳转
//            [[UIApplication sharedApplication].delegate.window setRootViewController:[[UIStoryboard storyboardWithName:@"ToChatMain" bundle:nil]instantiateInitialViewController]];
//            
//        }else{
//            NSLog(@"登陆错误:%@",error);
//        }
//    }];
//}

-(void)viewWillAppear:(BOOL)animated{
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
}

- (IBAction)dismissClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
