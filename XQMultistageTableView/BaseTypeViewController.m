//
//  BaseTypeViewController.m
//  XQMultistageTableView
//
//  Created by 柳钢物流 on 2020/8/6.
//  Copyright © 2020 IT_XQ. All rights reserved.
//

#import "BaseTypeViewController.h"
#import "XQMultistage.h"

@interface BaseTypeViewController () <XQMultistageAdapterDelegate>

@property(nonatomic, strong) NSMutableArray *data;

@property(nonatomic, strong) XQMultistageAdapter *adapter;

@end

@implementation BaseTypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _adapter = [[XQMultistageAdapter alloc] init];
    _adapter.radio = YES;
    _adapter.delegate = self;
    _adapter.multistageData = self.data;
    UITableView * tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.dataSource = _adapter;
    tableView.delegate = _adapter;
    [self.view addSubview:tableView];
    
    
}

#pragma mark - XQMultistageCellDelegate

- (CGFloat)xq_multistageAdapter:(XQMultistageAdapter *)adapter heightForRowAtNode:(XQMultistageNode *)node
{
    return 50;
}



#pragma mark - 懒加载
-(NSMutableArray *)data
{
    if (!_data) {
        
        _data = [NSMutableArray array];
        //--------1--------
        XQMultistageNode *nodeSuper1 = [[XQMultistageNode alloc] init];
        nodeSuper1.contentType = XQNodeContentTypeSuper;
        nodeSuper1.depth = 0;
        nodeSuper1.title = @"Super1";
        nodeSuper1.isExpand = YES; // 默认展开
        [_data addObject:nodeSuper1];
        
        XQMultistageNode *nodesub1_1 = [[XQMultistageNode alloc] init];
        nodesub1_1.contentType = XQNodeContentTypeSub;
        nodesub1_1.depth = 1;
        nodesub1_1.title = @"nodesub1_1";
        [nodeSuper1.subItems addObject:nodesub1_1];
        
        XQMultistageNode *nodesub1_2 = [[XQMultistageNode alloc] init];
        nodesub1_2.contentType = XQNodeContentTypeSub;
        nodesub1_2.depth = 1;
        nodesub1_2.title = @"nodesub1_2";
        [nodeSuper1.subItems addObject:nodesub1_2];
        
        XQMultistageNode *nodesub1_3 = [[XQMultistageNode alloc] init];
        nodesub1_3.contentType = XQNodeContentTypeSub;
        nodesub1_3.depth = 1;
        nodesub1_3.title = @"nodesub1_3";
        [nodeSuper1.subItems addObject:nodesub1_3];
        
        XQMultistageNode *nodeSuper1_4 = [[XQMultistageNode alloc] init];
        nodeSuper1_4.contentType = XQNodeContentTypeSuper;
        nodeSuper1_4.depth = 1;
        nodeSuper1_4.title = @"nodeSuper1_4";
        [nodeSuper1.subItems addObject:nodeSuper1_4];
        
        XQMultistageNode *nodeSuper1_4_1 = [[XQMultistageNode alloc] init];
        nodeSuper1_4_1.contentType = XQNodeContentTypeSub;
        nodeSuper1_4_1.depth = 2;
        nodeSuper1_4_1.title = @"nodeSuper1_4_1";
        [nodeSuper1_4.subItems addObject:nodeSuper1_4_1];
        
        XQMultistageNode *nodeSuper1_4_2 = [[XQMultistageNode alloc] init];
        nodeSuper1_4_2.contentType = XQNodeContentTypeSuper;
        nodeSuper1_4_2.depth = 2;
        nodeSuper1_4_2.title = @"nodeSuper1_4_2";
        [nodeSuper1_4.subItems addObject:nodeSuper1_4_2];
        
        XQMultistageNode *nodeSuper1_4_2_1 = [[XQMultistageNode alloc] init];
        nodeSuper1_4_2_1.contentType = XQNodeContentTypeSub;
        nodeSuper1_4_2_1.depth = 3;
        nodeSuper1_4_2_1.title = @"nodeSuper1_4_2_1";
        //        nodeSuper1_4_2_1.imagePath = @"profile_ic_male_normal";
        [nodeSuper1_4_2.subItems addObject:nodeSuper1_4_2_1];
        
        //--------2--------
        
        XQMultistageNode *nodeSuper2 = [[XQMultistageNode alloc] init];
        nodeSuper2.depth = 0;
        nodeSuper2.contentType = XQNodeContentTypeSuper;
        nodeSuper2.title = @"Super2";
        [_data addObject:nodeSuper2];
        
        XQMultistageNode *nodesub2_1 = [[XQMultistageNode alloc] init];
        nodesub2_1.contentType = XQNodeContentTypeSub;
        nodesub2_1.depth = 1;
        nodesub2_1.title = @"nodesub2_1";
        [nodeSuper2.subItems addObject:nodesub2_1];
        
        XQMultistageNode *nodesub2_2 = [[XQMultistageNode alloc] init];
        nodesub2_2.contentType = XQNodeContentTypeSub;
        nodesub2_2.depth = 1;
        nodesub2_2.title = @"nodesub2_2";
        [nodeSuper2.subItems addObject:nodesub2_2];
        
        //--------3--------
        
        XQMultistageNode *nodeSuper3 = [[XQMultistageNode alloc] init];
        nodeSuper3.depth = 0;
        nodeSuper3.contentType = XQNodeContentTypeSuper;
        nodeSuper3.title = @"Super3";
        [_data addObject:nodeSuper3];
        
    }
    
    return _data;
}

@end
