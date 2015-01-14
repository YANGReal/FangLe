//
//  ViewController.m
//  FangLe
//
//  Created by YANGReal on 15-1-13.
//  Copyright (c) 2015年 YANGReal. All rights reserved.
//

#import "FLMainViewController.h"
#import "FLMainTableViewCell.h"
@interface FLMainViewController ()<UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate>
@property (weak , nonatomic) IBOutlet UITableView *tableView;
@property (weak , nonatomic) IBOutlet UIView *headerView;
@property (weak , nonatomic) IBOutlet UIView *titleView;
@end

@implementation FLMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViews];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)setupViews
{
    self.title = @"房乐网";
    UIButton *button = [AppUtility generateButtonWithImageName:@"search.png"];
    [button addTarget:self action:@selector(searchButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];

    self.navigationItem.titleView = self.titleView;

    self.tableView.tableHeaderView = self.headerView;
    self.tableView.tableFooterView = [UIView new];
    
    UINib *nib = [UINib nibWithNibName:@"FLMainTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"cell"];
}

- (void)searchButtonClicked
{
    
}

#pragma mark - <UITableViewDataSource,UITableViewDelegate> method

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:RECT(0, 0, self.view.width, 20)];
    [view setBackgroundColor:CLEAR_COLOR];
    
    return view;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    FLMainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}

-(void)viewDidLayoutSubviews
{
    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [self.tableView setSeparatorInset:UIEdgeInsetsMake(0,0,0,0)];
    }
    
    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [self.tableView setLayoutMargins:UIEdgeInsetsMake(0,0,0,0)];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
