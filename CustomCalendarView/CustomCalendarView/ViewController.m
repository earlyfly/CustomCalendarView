//
//  ViewController.m
//  TestDemo
//
//  Created by trs on 2019/6/21.
//  Copyright © 2019 trs. All rights reserved.
//

#import "ViewController.h"
#import "CalenDarManager.h"
#import "CalendarCell.h"

@interface ViewController ()<UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, copy) NSArray *datesArray;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *collectionViewHeightCon;
@property (nonatomic, assign) NSInteger monthIndex;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"CalendarCell" bundle:nil] forCellWithReuseIdentifier:@"CalendarCell"];
    _monthIndex = 0;
    
    [self getCalendars];
}

- (void)getCalendars {
    NSString *yearMonth = [NSDate getMonthAfterMonth:_monthIndex];
    self.datesArray = [CalenDarManager createMonthDataInday:yearMonth].copy;
    self.dateLabel.text = yearMonth;
    CGFloat screenW = CGRectGetWidth([UIScreen mainScreen].bounds);
    CGFloat cellW = screenW / 7;
    self.collectionViewHeightCon.constant = self.datesArray.count % 7 == 0 ? (cellW * (self.datesArray.count / 7)) : (cellW * (self.datesArray.count / 7 + 1));
    [self.collectionView reloadData];
}

- (IBAction)preMonth:(id)sender {
    _monthIndex--;
    [self getCalendars];
}
- (IBAction)nextMonth:(id)sender {
    _monthIndex++;
    [self getCalendars];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.datesArray.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width = CGRectGetWidth([UIScreen mainScreen].bounds)/7;
    return CGSizeMake(width, width);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CalendarCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CalendarCell" forIndexPath:indexPath];
    [cell configCellWithCalendarModel:self.datesArray[indexPath.row]];
    return cell;
}

@end
