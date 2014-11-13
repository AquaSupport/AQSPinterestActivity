//
//  AQSPinterestActivity.h
//  AQSPinterestActivity
//
//  Created by kaiinui on 2014/11/08.
//  Copyright (c) 2014年 Aquamarine. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Pinterest;

/**
 *  `AQSPinterestActivity` requires 3 min setup.
 *
 *  1. Register and obtain a Pinterest client ID here.  https://developers.pinterest.com/manage/
 *  2. Setup an URL scheme like `pin83737` where `83737` is your Pinterest client ID. For Pinterest client ID `48090`, you should setup an URL scheme `pin48090`
 *  3. Initialze `AQSPinterestActivity` with `- initWithClientID:` and done!
 *
 *  For further information, see https://developers.pinterest.com/ios/
 *
 *  @see https://developers.pinterest.com/ios/
 */
@interface AQSPinterestActivity : UIActivity

/**
 *  Initialize `AQSPinterestActivity`
 *
 *  @param clientID Pinterest client ID which you can obtain from https://developers.pinterest.com/ios/
 *
 *  @return Initialized UIActivity instance
 */
- (instancetype)initWithClientID:(NSString *)clientID;

- (instancetype)initWithPinterest:(Pinterest *)pinterest;

@end
