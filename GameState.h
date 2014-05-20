//
//  GameState.h
//  JumboJump
//
//  Created by David Pointeau on 24/04/14.
//  Copyright (c) 2014 David Pointeau. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameState : NSObject

@property (nonatomic, assign) int score;
@property (nonatomic, assign) int highScore;
@property (nonatomic, assign) int stars;

+ (instancetype)sharedInstance;
- (void) saveState;
@end
