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
    NSArray *array = @[@"description", [NSURL URLWithString:@"http://www.toyship.org/wp-content/uploads/2012/09/IMG_8053-247x440.png"]];
    
    UIActivityViewController *controller = [[UIActivityViewController alloc] initWithActivityItems:array applicationActivities:@[activity]];
    
    [self presentViewController:controller animated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
