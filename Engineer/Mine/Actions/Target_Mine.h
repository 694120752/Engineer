//
//  Target_Mine.h
//  Engineer
//
//  Created by zhoufei on 2019/1/19.
//  Copyright © 2019年 zhoufei. All rights reserved.
//
//  模块对外服务类

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_Mine : NSObject
- (id)Action_nativeFetchSportsResultVC:(NSDictionary *)param;
- (id)Action_nativeFetchSportsPlanVC:(NSDictionary *)param;

- (void)Action_remoteAlertSportsResultVC:(NSDictionary *)param;
@end

NS_ASSUME_NONNULL_END
