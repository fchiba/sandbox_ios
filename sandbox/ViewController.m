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
@property (weak, nonatomic) IBOutlet UITextView *textview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableString *str = [NSMutableString string];
    for(int i = 0; i < 100; i++) {
        for(int j = 0; j < 40; j++) {
            [str appendString:@"hoge"];
        }
        [str appendFormat:@"line %d\n", i];
    }
    
    _textview.text = str;
//    _textview.insetsLayoutMarginsFromSafeArea = YES;
    _textview.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAlways;
}

- (void)viewDidLayoutSubviews {
    NSLog(@"bounds %@", NSStringFromCGRect(_textview.bounds));
    NSLog(@"contentSize %@", NSStringFromCGSize(_textview.contentSize));
    NSLog(@"contentInset %@", NSStringFromUIEdgeInsets(_textview.contentInset));
    NSLog(@"scrollIndicatorInsets %@", NSStringFromUIEdgeInsets(_textview.scrollIndicatorInsets));
    NSLog(@"adjustedContentInset %@", NSStringFromUIEdgeInsets(_textview.adjustedContentInset));
    NSLog(@"safeAreaInsets %@", NSStringFromUIEdgeInsets(_textview.safeAreaInsets));
}


@end
