//
//  FLGroupListViewController.m
//  FangLe
//
//  Created by admin on 15/1/14.
//  Copyright (c) 2015年 YANGReal. All rights reserved.
//

#import "FLGroupListViewController.h"
#import "FLGroupListCell.h"
#import "FLGroupDetailViewController.h"

@interface FLGroupListViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *groupTableView;

@end

@implementation FLGroupListViewController

#pragma mark - life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setTitle:@"团购"];
    UIButton *button = [AppUtility generateButtonWithImageName:@"search.png"];
    [button addTarget:self action:@selector(searchButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    [_groupTableView registerNib:[UINib nibWithNibName:@"FLGroupListCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"grouplist"];
    [_groupTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - SearchEvent

- (void)searchButtonClicked
{
    
}

#pragma mark - UITableViewDelegate & UITableViewDataSourse

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FLGroupListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"grouplist"];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 410;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 0;
    }else{
        return 20;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
    [view setOpaque:YES];
    [view setBackgroundColor:[UIColor whiteColor]];
    return view;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    FLGroupDetailViewController *viewController = [[FLGroupDetailViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}



@end



















