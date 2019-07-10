//
//  CalendarCell.m
//  TestDemo
//
//  Created by trs on 2019/7/10.
//  Copyright © 2019 trs. All rights reserved.
//

#import "CalendarCell.h"
#import "CalendarModel.h"
@interface CalendarCell ()

@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;
@property (weak, nonatomic) IBOutlet UILabel *dayLabel;

@end

@implementation CalendarCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)configCellWithCalendarModel:(CalendarModel *)item {
    self.dayLabel.text = item.day;
    self.dayLabel.textColor = item.dayType == CalendarDayTypeOther ? [UIColor lightGrayColor] : [UIColor blackColor];
}

@end
