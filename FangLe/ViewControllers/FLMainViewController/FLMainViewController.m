//
//  ViewController.m
//  FangLe
//
//  Created by YANGReal on 15-1-13.
//  Copyright (c) 2015年 YANGReal. All rights reserved.
//

#import "FLMainViewController.h"
#import "FLMainTableViewCell.h"
#import "FLGroupListViewController.h"

@interface FLMainViewController ()<UITableViewDataSource,UITableViewDelegate>
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
    self.titleView.backgroundColor = CLEAR_COLOR;
    self.navigationItem.titleView = self.titleView;
    self.headerView.backgroundColor = WHITE_COLOR;
    self.tableView.tableHeaderView = self.headerView;
    
    UINib *nib = [UINib nibWithNibName:@"FLMainTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"cell"];
}

- (void)searchButtonClicked
{
    
}

#pragma mark - SegmentButtonEvent

- (IBAction)groupPurchase:(UITapGestureRecognizer *)sender
{
    FLGroupListViewController *viewController = [[FLGroupListViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}


#pragma mark - <UITableViewDataSource,UITableViewDelegate> method

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    FLMainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    return cell;
    
}


- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 130;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
