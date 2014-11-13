//
//  AQSPinterestActivity.m
//  AQSPinterestActivity
//
//  Created by kaiinui on 2014/11/08.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import "AQSPinterestActivity.h"

#import <Pinterest.h>

@interface AQSPinterestActivity ()

@property (nonatomic, copy) NSArray *activityItems;
@property (nonatomic, strong) Pinterest *pinterest;

@end

@implementation AQSPinterestActivity

# pragma mark - Initialization

- (instancetype)initWithClientID:(NSString *)clientID {
    self = [super init];
    if (self) {
        _pinterest = [[Pinterest alloc] initWithClientId:clientID];
    }
    return self;
}

- (instancetype)initWithPinterest:(Pinterest *)pinterest {
    self = [super init];
    if (self) {
        _pinterest = pinterest;
    }
    return self;
}

# pragma mark - UIActivity

- (void)prepareWithActivityItems:(NSArray *)activityItems {
    [super prepareWithActivityItems:activityItems];
    
    self.activityItems = activityItems;
}

+ (UIActivityCategory)activityCategory {
    return UIActivityCategoryShare;
}

- (NSString *)activityType {
    return NSStringFromClass([self class]);
}

- (UIImage *)activityImage {
    if ([[[[UIDevice currentDevice]systemVersion] componentsSeparatedByString:@"."][0] intValue] >= 8) {
        return [UIImage imageNamed:@"color_PinterestShareActivity"];
    } else {
        return [UIImage imageNamed:@"AQSPinterestActivity"];
    }
}

- (NSString *)activityTitle {
    return @"Pinterest";
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
    return [self.pinterest canPinWithSDK] && [self nilOrFirstURLFromArray:activityItems] != nil;
}

- (void)performActivity {
    NSURL *url = [self nilOrFirstURLFromArray:self.activityItems];
    NSString *descriptionOrNil = [self nilOrFirstStringFromArray:self.activityItems];
    if (descriptionOrNil == nil) {
        descriptionOrNil = @"";
    }
    [self.pinterest createPinWithImageURL:url sourceURL:url description:descriptionOrNil];
}

# pragma mark - Helpers (Activity Items)

- (NSURL *)nilOrFirstURLFromArray:(NSArray *)array {
    for (id item in array) {
        if ([item isKindOfClass:[NSURL class]]) {
            return item;
        }
    }
    return nil;
}

- (NSString *)nilOrFirstStringFromArray:(NSArray *)array {
    for (id item in array) {
        if ([item isKindOfClass:[NSString class]]) {
            return item;
        }
    }
    return nil;
}

@end
