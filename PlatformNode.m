//
//  PlatformNode.m
//  JumboJump
//
//  Created by David Pointeau on 23/04/14.
//  Copyright (c) 2014 David Pointeau. All rights reserved.
//

#import "PlatformNode.h"

@implementation PlatformNode

- (BOOL) collisionWithPlayer:(SKNode *)player
{
    
    
    // 1
    
    // Only bounce the player if he's falling
    if (player.physicsBody.velocity.dy < 0) {
        // 2
        
        
        player.physicsBody.velocity = CGVectorMake(player.physicsBody.velocity.dx, 250.0f);
        
        SKAction *move = [SKAction moveToX:self.position.x-120.0 duration:0.3];
        [self runAction:move];
        
        // 3
        // Remove if it is a Break type platform
        if (_platformType == PLATFORM_BREAK) {
            [self removeFromParent];
            SKAction *move = [SKAction moveToX:self.position.x-120.0 duration:0.3];
            [self runAction:move];
        }
    }
    
    // 4
    // No stars for platforms
    return NO;
}

@end
