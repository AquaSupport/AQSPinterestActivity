//
//  AQSPinterestActivityTests.m
//  AQSPinterestActivityTests
//
//  Created by kaiinui on 2014/11/08.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <OCMock.h>

#import "AQSPinterestActivity.h"

@interface AQSPinterestActivityTests : XCTestCase

@property AQSPinterestActivity *activity;

@end

@implementation AQSPinterestActivityTests

- (void)setUp {
    [super setUp];
    
    self.activity = [[AQSPinterestActivity alloc] initWithClientID:@"1441227"];
}

- (void)tearDown {
    self.activity = nil;
    
    [super tearDown];
}

- (void)testItReturnsActivityTitleAsPinterest {
    XCTAssertTrue([[_activity activityTitle] isEqualToString:@"Pinterest"]);
}

- (void)testItReturnsActivityType {
    XCTAssertTrue([_activity.activityType isEqualToString:@"AQSPinterestActivity"]);
}

- (void)testItsActivityCategoryIsShare {
    XCTAssertTrue([AQSPinterestActivity activityCategory] == UIActivityCategoryShare);
}

- (void)testItCantPerformActivityIfActivityItemsDoesNotContainsURL {
    NSArray *activityItems = @[@"description"];
    
    XCTAssertFalse([_activity canPerformWithActivityItems:activityItems]);
}

@end
