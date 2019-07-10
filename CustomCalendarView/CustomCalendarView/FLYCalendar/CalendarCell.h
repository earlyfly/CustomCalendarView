//
//  CalendarCell.h
//  TestDemo
//
//  Created by trs on 2019/7/10.
//  Copyright © 2019 trs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CalendarModel;
NS_ASSUME_NONNULL_BEGIN

@interface CalendarCell : UICollectionViewCell

- (void)configCellWithCalendarModel:(CalendarModel *)item;

@end

NS_ASSUME_NONNULL_END
