//
//  BMPlaylistsController.m
//  Bot
//
//  Created by litt1e-p on 2017/2/16.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMPlaylistsController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface BMPlaylistsController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *items;

@end

@implementation BMPlaylistsController

static NSString *const kBMPlaylistsControllerID = @"kBMPlaylistsControllerID";

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initViews];
}

- (void)initViews
{
    [self.view addSubview:self.tableView];
    NSLog(@"ooo: %@", self.items);
}

#pragma mark - UITableView Delegate 📌
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark - UITableView DataSource 📌
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kBMPlaylistsControllerID forIndexPath:indexPath];
    return cell;
}

- (NSArray *)items
{
    if (!_items) {
        _items = [[MPMediaQuery playlistsQuery] collections];
    }
    return _items;
}

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

@end
