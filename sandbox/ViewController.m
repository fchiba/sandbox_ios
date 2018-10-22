//
//  ViewController.m
//  sandbox
//
//  Created by Fumiya Chiba on 2018/10/19.
//  Copyright © 2018年 Fumiya Chiba. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.tableView.insetsLayoutMarginsFromSafeArea = NO;
//    self.tableView.insetsContentViewsToSafeArea = NO;
//    self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
//    self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAlways;
    NSLog(@"%s automaticallyAdjustsScrollViewInsets %d contentInsetAdjustmentBehavior %ld", __FUNCTION__, self.automaticallyAdjustsScrollViewInsets, self.tableView.contentInsetAdjustmentBehavior);
}

- (void)viewDidLayoutSubviews {
    NSLog(@"bounds %@", NSStringFromCGRect(self.tableView.bounds));
    NSLog(@"contentSize %@", NSStringFromCGSize(self.tableView.contentSize));
    NSLog(@"contentInset %@", NSStringFromUIEdgeInsets(self.tableView.contentInset));
    NSLog(@"scrollIndicatorInsets %@", NSStringFromUIEdgeInsets(self.tableView.scrollIndicatorInsets));
    NSLog(@"adjustedContentInset %@", NSStringFromUIEdgeInsets(self.tableView.adjustedContentInset));
    NSLog(@"safeAreaInsets %@", NSStringFromUIEdgeInsets(self.tableView.safeAreaInsets));
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *reuseId = @"hogehoge";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseId];
        cell.textLabel.textColor = [UIColor blackColor];
//        cell.insetsLayoutMarginsFromSafeArea = NO;
//        cell.contentView.insetsLayoutMarginsFromSafeArea = NO;
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld hoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooge", indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =[self.tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"cell %@", cell);
    NSLog(@"bounds %@", NSStringFromCGRect(cell.bounds));
//    NSLog(@"contentSize %@", NSStringFromCGSize(cell.contentSize));
//    NSLog(@"contentInset %@", NSStringFromUIEdgeInsets(cell.contentInset));
//    NSLog(@"scrollIndicatorInsets %@", NSStringFromUIEdgeInsets(cell.scrollIndicatorInsets));
//    NSLog(@"adjustedContentInset %@", NSStringFromUIEdgeInsets(cell.adjustedContentInset));
    NSLog(@"safeAreaInsets %@", NSStringFromUIEdgeInsets(cell.safeAreaInsets));
    NSLog(@"contentView %@", cell.contentView);

}

@end
