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
@interface FLMainViewController ()<UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate>



<<<<<<< HEAD
@interface FLMainViewController ()<UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate>

=======
>>>>>>> FETCH_HEAD
@property (weak , nonatomic) IBOutlet UITableView *tableView;
@property (weak , nonatomic) IBOutlet UIView *headerView;
@property (weak , nonatomic) IBOutlet UIView *titleView;
@property (weak , nonatomic) IBOutlet UIButton *moreButton;
@property (strong , nonatomic) NSMutableArray *dataArray;

-(IBAction)moreButtonClicked:(id)sender;

@end

@implementation FLMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = [NSMutableArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5", nil];
    [self setupViews];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    CGFloat space = (self.view.width-35*2-23*4)/3;
    for (NSInteger i = 100;i<104;i++)
    {
        NSInteger index = i-100;
        UIButton *button = (UIButton *)[self.headerView viewWithTag:i];
        DLog(@"button = %@",button);
        button.x = 35+index*(space+23);
    }

}


- (void)setupViews
{
    self.title = @"房乐网";
<<<<<<< HEAD

=======

    UIButton *button = [AppUtility generateButtonWithImageName:@"search.png"];
    [button addTarget:self action:@selector(searchButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];


>>>>>>> FETCH_HEAD
    UIButton *searchbutton = [AppUtility generateButtonWithImageName:@"search.png"];
    [searchbutton addTarget:self action:@selector(searchButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:searchbutton];
    
    UIButton *userButton = [AppUtility generateButtonWithImageName:@"user_icon.png"];
    [userButton addTarget:self action:@selector(userButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:userButton];
    
<<<<<<< HEAD
=======
    
    
    self.titleView.backgroundColor = CLEAR_COLOR;

>>>>>>> FETCH_HEAD
    self.navigationItem.titleView = self.titleView;

    self.tableView.tableHeaderView = self.headerView;

<<<<<<< HEAD
=======
   // self.tableView.tableFooterView = [UIView new];
    

>>>>>>> FETCH_HEAD
    self.tableView.tableFooterView = self.moreButton;

    UINib *nib = [UINib nibWithNibName:@"FLMainTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"cell"];
}

- (void)searchButtonClicked
{
    
}

- (void)userButtonClicked
{
    
}

-(IBAction)moreButtonClicked:(id)sender
{
    for (NSInteger i = 0;i<5;i++)
    {
        [self.dataArray addObject:@"1"];
    }
    [_tableView reloadData];
}

- (IBAction)groupParchaseButtonDidClicked:(UIButton *)sender
{
    FLGroupListViewController *viewController = [[FLGroupListViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}



#pragma mark - <UITableViewDataSource,UITableViewDelegate> method

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:RECT(0, 0, self.view.width, 20)];
    [view setBackgroundColor:CLEAR_COLOR];
    
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 140;
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    FLMainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
<<<<<<< HEAD
    
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
=======
>>>>>>> FETCH_HEAD
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
