//
//  CalendarModel.h
//  TestDemo
//
//  Created by trs on 2019/7/10.
//  Copyright © 2019 trs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    CalendarDayTypeNormal,// 当前月非今日日期
    CalendarDayTypeToday,// 当前月今日日期
    CalendarDayTypeOther,// 其他月日期
} CalendarDayType;

NS_ASSUME_NONNULL_BEGIN

@interface CalendarModel : NSObject

@property (nonatomic, copy) NSString *year;
@property (nonatomic, copy) NSString *month;
@property (nonatomic, copy) NSString *day;
@property (nonatomic, assign) CalendarDayType dayType;
@property (nonatomic, copy) NSString *date;

@end

NS_ASSUME_NONNULL_END
