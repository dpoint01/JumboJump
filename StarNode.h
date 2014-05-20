//
//  StarNode.h
//  JumboJump
//
//  Created by David Pointeau on 23/04/14.
//  Copyright (c) 2014 David Pointeau. All rights reserved.
//

#import "GameObjectNode.h"

typedef NS_ENUM(int, StarType) {
    STAR_NORMAL,
    STAR_SPECIAL,
};

@interface StarNode : GameObjectNode

@property (nonatomic, assign) StarType starType;

@end
