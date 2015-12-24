//
//  ViewController.m
//  MasonryWithScrollview
//
//  Created by 洪晨希 on 15/12/24.
//  Copyright © 2015年 洪晨希. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat padding = 10.0;
    CGFloat viewHeight = 150.0;
    
    UIScrollView *scrollView = [[UIScrollView alloc]init];
    [self.view addSubview:scrollView];
    
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(5, 5, 5, 5));
    }];
    
    
    UIView *contentView = [[UIView alloc]init];
    contentView.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:contentView];
    
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(scrollView);
        make.width.equalTo(scrollView);
        
    }];
    
    UIView *view1 = [[UIView alloc]init];
    view1.backgroundColor = [UIColor greenColor];
    [contentView addSubview:view1];
    
    UIView *view2 = [[UIView alloc]init];
    view2.backgroundColor = [UIColor redColor];
    [contentView addSubview:view2];
    
    UIView *view3 = [[UIView alloc]init];
    view3.backgroundColor = [UIColor whiteColor];
    [contentView addSubview:view3];
    
    UIView *view4 = [[UIView alloc]init];
    view4.backgroundColor = [UIColor purpleColor];
    [contentView addSubview:view4];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(viewHeight);
        make.centerY.equalTo(contentView.mas_centerY);
        make.bottom.equalTo(view3.mas_top).with.offset(-padding);
        make.left.equalTo(contentView.mas_left).with.offset(padding);
        make.right.equalTo(view2.mas_left).with.offset(-padding);

    }];
   
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.width.height.equalTo(view1);
        make.left.equalTo(view1.mas_right).with.offset(padding);
        make.right.equalTo(contentView.mas_right).with.offset(-padding);
        
    }];
    
    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(view1);
        make.left.equalTo(contentView.mas_left).with.offset(padding);
        make.right.equalTo(view4.mas_left).with.offset(-padding);
        make.top.equalTo(view1.mas_bottom).with.offset(padding);
        make.bottom.equalTo(contentView.mas_bottom).with.offset(-padding);
        
    }];
    
    [view4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(view1);
        make.top.bottom.equalTo(view3);
        make.left.equalTo(view3.mas_right).with.offset(padding);
        make.right.equalTo(contentView.mas_right).with.offset(-padding);
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
