//
//  NSDate+Extension.h
//  TestDemo
//
//  Created by trs on 2019/7/10.
//  Copyright © 2019 trs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (Extension)

/// 获取年
+ (NSString *)year:(NSString *)dateStr;
/// 获取月
+ (NSString *)month:(NSString *)dateStr;
/// 获取日
+ (NSString *)day:(NSString *)dateStr;
/// 获取星期
+ (NSInteger)week:(NSString *)dateStr;
/// 获取星期 中文 日
+ (NSString *)getWeekFromDate:(NSDate *)date;
/// 获取星期 中文 周日
+ (NSString *)getChineseWeekFrom:(NSString *)dateStr;
/// 获取月共有多少天
+ (NSInteger)daysInMonth:(NSString *)dateStr;

/// 获取当前日期 2018-01-01
+ (NSString *)currentDay;
/// 获取当前小时 00:00
+ (NSString *)currentHour;
/// 获取下月最后一天
+ (NSString *)nextMonthLastDay;

/// 判断是否是今天
+ (BOOL)isToday:(NSString *)dateStr;
/// 判断是否是明天
+ (BOOL)isTomorrow:(NSString *)dateStr;
/// 判断是否是后天
+ (BOOL)isAfterTomorrow:(NSString *)dateStr;
/// 判断是否是过去的时间
+ (BOOL)isHistoryTime:(NSString *)dateStr;

/// 从时间戳获取具体时间 格式:6:00
+ (NSString *)hourStringWithInterval:(NSTimeInterval)timeInterval;
/// 从时间戳获取具体小时 格式:6
+ (NSString *)hourTagWithInterval:(NSTimeInterval)timeInterval;
/// 从毫秒级时间戳获取具体小时 格式:600
+ (NSString *)hourNumberWithInterval:(NSTimeInterval)timeInterval;
/// 从时间戳获取具体日期 格式:2018-03-05
+ (NSString *)timeStringWithInterval:(NSTimeInterval)timeInterval;
/// 从具体日期获取时间戳 毫秒
+ (NSTimeInterval)timeIntervalFromDateString:(NSString *)dateStr;

/// 获取当前天的后几天的星期
+ (NSString *)getWeekAfterDay:(NSInteger)day;
/// 获取当前天的后几天的日
+ (NSString *)getDayAfterDay:(NSInteger)day;
/// 获取当前月的后几月
+ (NSString *)getMonthAfterMonth:(NSInteger)Month;


// 转化字符串为日期 NSString->NSDate
+ (NSDate *  _Nonnull)dateByDateString:(NSString * _Nonnull)dateString format:(NSString * _Nonnull)format;
// 转化日期为字符串 NSDate->NSString
+ (NSString * _Nonnull)dateStringByDate:(NSDate * _Nonnull)date format:(NSString * _Nonnull)format;
// 获取指定日期左右指定天数的日期
+ (NSString *)getDate:(NSDate *)date formatString:(NSString *)format dayNumber:(NSInteger)num;

@end

NS_ASSUME_NONNULL_END
