//
//  ViewController.m
//  sandbox
//
//  Created by Fumiya Chiba on 2018/10/19.
//  Copyright © 2018年 Fumiya Chiba. All rights reserved.
//

#import "ViewController.h"
@import WebKit;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet WKWebView *webview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://blog.fchiba.net/"]];
    [_webview loadRequest:req];
    _webview.scrollView.insetsLayoutMarginsFromSafeArea = NO;
//    self.insetsContentViewsToSafeArea = NO;
    _webview.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
//        _webview.scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(0, 0, 44, 0);
//    _webview.scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(0, 0, 0, 44);
//    _webview.scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(0, 0, 1, 0);
//    _webview.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 1, 0);
//    _webview.layoutMargins = UIEdgeInsetsZero;

    // Do any additional setup after loading the view, typically from a nib.
}


@end
