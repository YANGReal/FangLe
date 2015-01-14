//
//  FLGroupListCell.m
//  FangLe
//
//  Created by admin on 15/1/14.
//  Copyright (c) 2015年 YANGReal. All rights reserved.
//

#import "FLGroupListCell.h"

@interface FLGroupListCell ()

@property (weak, nonatomic) IBOutlet UILabel *areaLabel;
@property (weak, nonatomic) IBOutlet UILabel *tenDayLabel;
@property (weak, nonatomic) IBOutlet UILabel *unitDayLabel;
@property (weak, nonatomic) IBOutlet UILabel *tenHourLabel;
@property (weak, nonatomic) IBOutlet UILabel *unitHourLabel;
@property (weak, nonatomic) IBOutlet UILabel *tenMinuteLabel;
@property (weak, nonatomic) IBOutlet UILabel *unitMinuteLabel;

@end

@implementation FLGroupListCell

- (void)awakeFromNib {
    // Initialization code
    [super awakeFromNib];
    [self layoutCornerRadius];
}

- (void)layoutCornerRadius
{
    [_areaLabel setupBorder:[UIColor clearColor] cornerRadius:2.0f];
    [_tenDayLabel setupBorder:[UIColor clearColor] cornerRadius:2.0f];
    [_unitDayLabel setupBorder:[UIColor clearColor] cornerRadius:2.0f];
    [_tenHourLabel setupBorder:[UIColor clearColor] cornerRadius:2.0f];
    [_unitHourLabel setupBorder:[UIColor clearColor] cornerRadius:2.0f];
    [_tenMinuteLabel setupBorder:[UIColor clearColor] cornerRadius:2.0f];
    [_unitMinuteLabel setupBorder:[UIColor clearColor] cornerRadius:2.0f];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
