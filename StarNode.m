//
//  StarNode.m
//  JumboJump
//
//  Created by David Pointeau on 23/04/14.
//  Copyright (c) 2014 David Pointeau. All rights reserved.
//

#import "StarNode.h"

@import AVFoundation;

@interface StarNode ()
{
    SKAction *_starSound;
}

@end@implementation StarNode

- (BOOL) collisionWithPlayer:(SKNode *)player
{
    // Boost the player up
    player.physicsBody.velocity = CGVectorMake(player.physicsBody.velocity.dx, 400.0f);
    
    // Play sound
    [self.parent runAction:_starSound];
    
    // Remove this star
    [self removeFromParent];
    
    // Award score
    [GameState sharedInstance].score += (_starType == STAR_NORMAL ? 20 : 100);    // The HUD needs updating to show the new stars and score
    
    // Award stars
    [GameState sharedInstance].stars += (_starType == STAR_NORMAL ? 1 : 5);
    
    return YES;
}

- (id) init
{
    if (self = [super init]) {
        // Sound for when a star is collected
        _starSound = [SKAction playSoundFileNamed:@"StarPing.wav" waitForCompletion:NO];
    }
    
    return self;
}

@end
