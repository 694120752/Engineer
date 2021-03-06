//
//  Target_Mine.m
//  Engineer
//
//  Created by zhoufei on 2019/1/19.
//  Copyright © 2019年 zhoufei. All rights reserved.
//

#import "Target_Mine.h"
#import "FZMineCoordinator.h"
#import "FZSportsPlanVC.h"
#import "FZSportsResultVC.h"
#import <BottomComponentLib/ZHFTopWindow.h>

@implementation Target_Mine
- (id)Action_nativeFetchSportsResultVC:(NSDictionary *)param {
    UIViewController *vc = [[FZMineCoordinator sharedFZMineCoordinator] targetVCWithClassName:NSStringFromClass([FZSportsResultVC class])];
    if ([vc isKindOfClass:[FZSportsResultVC class]]) {
        [(FZSportsResultVC *)vc configContent:param[@"title"]];
    }
    return vc;
}
- (id)Action_nativeFetchSportsPlanVC:(NSDictionary *)param {
    UIViewController *vc = [[FZMineCoordinator sharedFZMineCoordinator] targetVCWithClassName:NSStringFromClass([FZSportsPlanVC class])];
    if ([vc isKindOfClass:[FZSportsPlanVC class]]) {
        [(FZSportsPlanVC *)vc configContent:param[@"title"]];
    }
    return vc;
}

- (void)Action_remoteAlertSportsResultVC:(NSDictionary *)param {
    UIViewController *vc = [[FZMineCoordinator sharedFZMineCoordinator] targetVCWithClassName:NSStringFromClass([FZSportsResultVC class])];
    if ([vc isKindOfClass:[FZSportsResultVC class]]) {
        [(FZSportsPlanVC *)vc configContent:param[@"title"]];
    }
    
    id<UIApplicationDelegate> appDelegate = [UIApplication sharedApplication].delegate;
    UITabBarController *rootVC = [[appDelegate window] rootViewController];
    [rootVC.childViewControllers[0] pushViewController:vc animated:YES];
}
@end
