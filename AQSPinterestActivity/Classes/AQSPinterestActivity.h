//
//  AQSPinterestActivity.h
//  AQSPinterestActivity
//
//  Created by kaiinui on 2014/11/08.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Pinterest;

@interface AQSPinterestActivity : UIActivity

- (instancetype)initWithClientID:(NSString *)clientID;

- (instancetype)initWithPinterest:(Pinterest *)pinterest;

@end
