//
//  ViewController.m
//  AQSPinterestActivity
//
//  Created by kaiinui on 2014/11/08.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import "ViewController.h"

#import "AQSPinterestActivity.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    AQSPinterestActivity *activity = [[AQSPinterestActivity alloc] initWithClientID:@"1441227"];
    NSArray *activityItems = @[
                               @"whoa",
                               [NSURL URLWithString:@"http://www.joomlaworks.net/images/demos/galleries/abstract/7.jpg"]
                               ];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:@[activity]];
    
    [self presentViewController:activityViewController animated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
