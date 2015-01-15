//
//  FLMainTableViewCell.m
//  FangLe
//
//  Created by YANGReal on 15-1-13.
//  Copyright (c) 2015年 YANGReal. All rights reserved.
//

#import "FLMainTableViewCell.h"

@interface FLMainTableViewCell ()
@property (weak , nonatomic) IBOutlet UILabel *titleLabel;
@property (weak , nonatomic) IBOutlet UILabel *addrLabel;
@property (weak , nonatomic) IBOutlet UILabel *countLabel;
@property (weak , nonatomic) IBOutlet UILabel *descLabel;
@property (weak , nonatomic) IBOutlet UIImageView *coverView;
@property (strong , nonatomic) UIView *line;
@end

@implementation FLMainTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.line = [[UIView alloc] init];
    self.line.backgroundColor = LIGHT_GRAY;
    [self.contentView addSubview:self.line];
    
}

- (void)layoutSubviews
{
    self.titleLabel.x = self.addrLabel.x = self.countLabel.x = self.descLabel.x = self.coverView.right+10;
    self.titleLabel.width = self.addrLabel.width = self.countLabel.width = self.descLabel.width = self.width-self.titleLabel.x;
    self.line.frame = RECT(0, self.height-1, self.width, 0.5);
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
}

@end
