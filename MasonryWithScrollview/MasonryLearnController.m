//
//  MasonryLearnController.m
//  MasonryWithScrollview
//
//  Created by 洪晨希 on 15/12/29.
//  Copyright © 2015年 洪晨希. All rights reserved.
//

#import "MasonryLearnController.h"
#import <Masonry.h>
#import "UIView+Masonry_CX.h"
@interface MasonryLearnController ()

@end

@implementation MasonryLearnController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /**
     *   居中显示一个view
     */
    UIView *parentView = [UIView new];
    parentView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:parentView];
    [parentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
    
    /**
     *  让一个view略小于其superView(边距为10)
     */
//    UIView *redView = [UIView new];
//    redView.backgroundColor = [UIColor redColor];
//    [parentView addSubview:redView];
//    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(parentView).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
//    }];
    
    
    
    /**
     *  让两个高度为150的view垂直居中且等宽且等间隔排列 间隔为10(自动计算其宽度)
     */
//    CGFloat padding = 10.0;
//    
//    UIView *leftView = [UIView new];
//    leftView.backgroundColor = [UIColor redColor];
//    [parentView addSubview:leftView];
//    
//    UIView *rightView = [UIView new];
//    rightView.backgroundColor = [UIColor redColor];
//    [parentView addSubview:rightView];
//    
//    [leftView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(parentView.mas_centerY);
//        make.left.equalTo(parentView.mas_left).with.offset(padding);
//        make.height.mas_equalTo(@150);
//        make.right.equalTo(rightView.mas_left).with.offset(-padding);
//    }];
//    
//    [rightView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(parentView.mas_centerY);
//        make.right.equalTo(parentView.mas_right).with.offset(-padding);
//        make.left.equalTo(leftView.mas_right).with.offset(padding);
//        make.height.equalTo(leftView);
//        make.width.equalTo(leftView);
//        
//    }];
    
    /**
     *  在UIScrollView顺序排列一些view并自动计算contentSize
     */
//    UIScrollView *scrollView = [UIScrollView new];
//    scrollView.backgroundColor = [UIColor whiteColor];
//    [parentView addSubview:scrollView];
//    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(parentView).with.insets(UIEdgeInsetsMake(5, 5, 5, 5));
//    }];
//    
//    UIView *container = [UIView new];
//    [scrollView addSubview:container];
//    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(scrollView);
//        make.width.equalTo(scrollView);
//    }];
//    
//    int count = 10;
//    UIView *lastView = nil;
//    for (int i = 1; i<=count; i++) {
//        UIView *subView = [UIView new];
//        [container addSubview:subView];
//        subView.backgroundColor = [UIColor colorWithHue:( arc4random() % 256 / 256.0 )
//                                             saturation:( arc4random() % 128 / 256.0 ) + 0.5
//                                             brightness:( arc4random() % 128 / 256.0 ) + 0.5
//                                                  alpha:1];
//        [subView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.right.equalTo(container);
//            make.height.mas_equalTo(@(20*i));
//            
//            if (lastView) {
//                make.top.mas_equalTo(lastView.mas_bottom);
//            }else{
//                make.top.mas_equalTo(container.mas_top);
//            }
//        }];
//        
//        lastView = subView;
//    }
//    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(lastView.mas_bottom);
//    }];
    
    
    UIView *view1 = [UIView new];
    view1.backgroundColor = [UIColor redColor];
    [parentView addSubview:view1];
    
    UIView *view2 = [UIView new];
    view2.backgroundColor = [UIColor redColor];
    [parentView addSubview:view2];
    
    UIView *view3 = [UIView new];
    view3.backgroundColor = [UIColor redColor];
    [parentView addSubview:view3];
    
    UIView *view4 = [UIView new];
    view4.backgroundColor = [UIColor redColor];
    [parentView addSubview:view4];
    
    UIView *view5 = [UIView new];
    view5.backgroundColor = [UIColor redColor];
    [parentView addSubview:view5];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(@[view2,view3]);
        make.centerX.equalTo(@[view4,view5]);
        make.size.mas_equalTo(CGSizeMake(40, 40));
    }];
    
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 60));
    }];
    
    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    
    [view4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
    [view5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(70, 70));
    }];
    
    [parentView distributeSpacingHorizontallyWith:@[view1,view2,view3]];
    [parentView distributeSpacingVerticallyWith:@[view1,view4,view5]];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
