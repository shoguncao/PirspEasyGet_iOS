//
//  EGRootViewController.m
//  example
//
//  Created by 曹寿刚 on 14-4-8.
//  Copyright (c) 2014年 shoguncao. All rights reserved.
//

#import "EGRootViewController.h"
#import "EGRecommendViewController.h"
#import "EGClassifyViewController.h"
#import "EGFriendViewController.h"
#import "EGSettingViewController.h"

@interface EGRootViewController ()

@end

@implementation EGRootViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initUI];
    }
    return self;
}

- (void)loadView
{
    [super loadView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)initUI
{
    EGRecommendViewController *recommendVC = [[[EGRecommendViewController alloc] init] autorelease];
    UINavigationController *recommendNav = [[[UINavigationController alloc] initWithRootViewController:recommendVC] autorelease];
    recommendNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"推荐" image:nil selectedImage:nil];
    
    EGClassifyViewController *classifyVC = [[[EGClassifyViewController alloc] init] autorelease];
    UINavigationController *classifyNav = [[[UINavigationController alloc] initWithRootViewController:classifyVC] autorelease];
    classifyNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"分类" image:nil selectedImage:nil];
    
    EGFriendViewController *friendVC = [[[EGFriendViewController alloc] init] autorelease];
    UINavigationController *friendNav = [[[UINavigationController alloc] initWithRootViewController:friendVC] autorelease];
    friendNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"好友" image:nil selectedImage:nil];
    
    EGSettingViewController *settingVC = [[[EGSettingViewController alloc] init] autorelease];
    UINavigationController *settingNav = [[[UINavigationController alloc] initWithRootViewController:settingVC] autorelease];
    settingNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"设置" image:nil selectedImage:nil];
    
    NSArray *vcArr = [NSArray arrayWithObjects:recommendNav, classifyNav, friendNav, settingNav, nil];
    [self setViewControllers:vcArr];
}

@end
