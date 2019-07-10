//
//  CalenDarManager.h
//  TestDemo
//
//  Created by trs on 2019/7/10.
//  Copyright © 2019 trs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalendarModel.h"
#import "NSDate+Extension.h"

NS_ASSUME_NONNULL_BEGIN

@interface CalenDarManager : NSObject

/**
 根据年月份查询该月数据源
 
 @param yearMonthStr 年月份字符串yyyy-MM
 @return 数据源
 */
+ (NSMutableArray *)createMonthDataInday:(NSString *)yearMonthStr;

@end

NS_ASSUME_NONNULL_END
