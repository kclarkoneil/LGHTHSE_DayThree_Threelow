//
//  GameController.m
//  Threelow
//
//  Created by Nathan Wainwright on 2018-08-01.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"
@implementation GameController


- (void) newGame {
    _diceCollection = [[NSMutableArray alloc] init];
    _diceHeld = [[NSMutableSet alloc] init];
  
    Dice *oneDice = [[Dice alloc] init];
    [_diceCollection addObject:oneDice];
    NSLog(@"0 [%i]", oneDice.currentValue);
    
    Dice *twoDice = [[Dice alloc] init];
    NSLog(@"1 [%i]", twoDice.currentValue);
    [_diceCollection addObject:twoDice];
    
    Dice *threeDice = [[Dice alloc] init];
    NSLog(@"2 [%i]", threeDice.currentValue);
    [_diceCollection addObject:threeDice];
    
    Dice *fourDice = [[Dice alloc] init];
    NSLog(@"3 [%i]", fourDice.currentValue);
    [_diceCollection addObject:fourDice];
    
    Dice *fiveDice = [[Dice alloc] init];
    NSLog(@"4 [%i]", fiveDice.currentValue);
    [_diceCollection addObject:fiveDice];
}

- (void) rollDice{
    // if heldDice has die, then don't roll
    
    for (int i =0; i < _diceCollection.count; i++){
        Dice *dice = _diceCollection[i];
    
    //for (Dice *dice in _diceCollection) {
        if (![_diceHeld containsObject:dice]){
            [dice rollDice];
            NSLog(@"%i [%i]", i ,dice.currentValue);
        } else {
            NSLog(@"%i [%i] *", i ,dice.currentValue);

        }
        
    }
}

- (void) holdDie: (int) diceChosen {
    [_diceHeld addObject:_diceCollection[diceChosen]];
}


@end
