//
//  PlatformNode.h
//  JumboJump
//
//  Created by David Pointeau on 23/04/14.
//  Copyright (c) 2014 David Pointeau. All rights reserved.
//

#import "GameObjectNode.h"

typedef NS_ENUM(int, PlatformType) {
    PLATFORM_NORMAL,
    PLATFORM_BREAK,
};

@interface PlatformNode : GameObjectNode
@property (nonatomic, assign) PlatformType platformType;

@end
