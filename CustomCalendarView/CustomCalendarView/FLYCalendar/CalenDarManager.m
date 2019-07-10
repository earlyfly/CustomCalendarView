//
//  CalenDarManager.m
//  TestDemo
//
//  Created by trs on 2019/7/10.
//  Copyright © 2019 trs. All rights reserved.
//

#import "CalenDarManager.h"


@implementation CalenDarManager

+ (NSMutableArray *)createMonthDataInday:(NSString *)yearMonthStr {
    
    NSMutableArray *monthData = [NSMutableArray array];
    
    NSString *formatStr = @"yyyy-MM-dd";
    // 要查询年月份的第一天日期
    NSString *dateStr = [NSString stringWithFormat:@"%@-01",yearMonthStr];
    NSDate *firstDate = [NSDate dateByDateString:dateStr format:formatStr];
    
    // 当前月第一天是周几
    NSInteger firstDayWeek = [NSDate week:dateStr];
    //如果是当前月,"第一天星期几"就以今天的星期为开始
    
    // 之前月
    for (NSInteger i = 0; i < firstDayWeek; ++i) {
        NSString *beforeDateStr = [NSDate getDate:firstDate formatString:formatStr dayNumber:-firstDayWeek + i];
        CalendarModel *item = [[CalendarModel alloc] init];
        item.year = [NSDate year:beforeDateStr];
        item.month = [NSDate month:beforeDateStr];
        item.day = [NSDate day:beforeDateStr];
        item.date = beforeDateStr;
        item.dayType = CalendarDayTypeOther;
        [monthData addObject:item];
    }
    
    // 当前月
    NSInteger dayCount = [NSDate daysInMonth:dateStr];
    NSString *lastDayStr = nil;// 当前月最后一天
    for (NSInteger i = 0; i < dayCount; ++i) {
        CalendarModel *item = [[CalendarModel alloc] init];
        item.year = [NSDate year:dateStr];
        item.month = [NSDate month:dateStr];
        item.day = [NSString stringWithFormat:@"%ld",i + 1];
        item.date = [NSString stringWithFormat:@"%@-%ld",yearMonthStr,i + 1];
        item.dayType = [NSDate isToday:item.date] ? CalendarDayTypeToday : CalendarDayTypeNormal;
        if (i == dayCount - 1) {
            lastDayStr = item.date;
        }
        [monthData addObject:item];
    }
    
    // 下个月
    NSInteger lastDayWeek = [NSDate week:lastDayStr];
    NSDate *lastDate = [NSDate dateByDateString:lastDayStr format:formatStr];
    for (NSInteger i = 1; i < 7 - lastDayWeek; ++i) {
        NSString *afterDateStr = [NSDate getDate:lastDate formatString:formatStr dayNumber:i];
        CalendarModel *item = [[CalendarModel alloc] init];
        item.year = [NSDate year:afterDateStr];
        item.month = [NSDate month:afterDateStr];
        item.day = [NSDate day:afterDateStr];
        item.date = afterDateStr;
        item.dayType = CalendarDayTypeOther;
        [monthData addObject:item];
    }
    
    return monthData;
}

@end
