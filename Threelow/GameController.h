//
//  GameController.h
//  Threelow
//
//  Created by Nathan Wainwright on 2018-08-01.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property NSMutableArray *diceCollection;
@property NSMutableSet *diceHeld;
@property int scoreTotalValue;





- (void) newGame;
- (void) rollDice;
- (void) holdDie: (int) diceChosen;
- (void) unholdDie: (int) diceChosen;
- (void) resetDice;
- (int) scoreTotal;



@end
