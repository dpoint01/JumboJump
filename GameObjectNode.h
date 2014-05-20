//
//  GameObjectNode.h
//  JumboJump
//
//  Created by David Pointeau on 23/04/14.
//  Copyright (c) 2014 David Pointeau. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GameObjectNode : SKNode

// Called when a player physics body collides with the game object's physics body
- (BOOL) collisionWithPlayer:(SKNode *)player;

// Called every frame to see if the game object should be removed from the scene
- (void) checkNodeRemoval:(CGFloat)playerY;

@end
