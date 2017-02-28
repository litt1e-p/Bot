//
//  BMPlaylistsController.m
//  Bot
//
//  Created by litt1e-p on 2017/2/16.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMPlaylistsController.h"
#import "BMMacro.h"
#import "BMIPodPlaylistViewModel.h"
#import "BMIPodPlaylistCell.h"

@interface BMPlaylistsController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) BMIPodPlaylistViewModel *viewModel;

@end

@implementation BMPlaylistsController

static NSString *const kBMIPodPlaylistCellID = @"kBMIPodPlaylistCellID";

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initViews];
    [self initViewModel];
}

- (void)initViewModel
{
    @weakify(self);
    [RACObserve(self.viewModel, playlists) subscribeNext:^(NSArray *x) {
        @strongify(self);
        if (x) {
            self.items = [x copy];
            [self.tableView reloadData];
        }
    }]; 
    [self.viewModel fetchPlaylists];
}

- (void)initViews
{
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[BMIPodPlaylistCell class] forCellReuseIdentifier:kBMIPodPlaylistCellID];
    self.tableView.tableFooterView = [[UIView alloc] init];
}

#pragma mark - UITableView Delegate 📌
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark - UITableView DataSource 📌
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return ScaleH(120);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BMIPodPlaylistCell *cell = [tableView dequeueReusableCellWithIdentifier:kBMIPodPlaylistCellID forIndexPath:indexPath];
    [cell assignCellWithDTO:self.items[indexPath.row]];
    return cell;
}

- (BMIPodPlaylistViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [[BMIPodPlaylistViewModel alloc] init];
    }
    return _viewModel;
}

- (NSArray *)items
{
    if (!_items) {
        _items = [[NSArray alloc] init];
    }
    return _items;
}

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView            = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, self.view.bounds.size.height-64-30)];
        _tableView.delegate   = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

@end
