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
    NSLog(@"0 [%@]", oneDice.diceImages[oneDice.currentValue]); // dice.diceImages[dice.currentValue]
    
    Dice *twoDice = [[Dice alloc] init];
    NSLog(@"1 [%@]", twoDice.diceImages[twoDice.currentValue]);
    [_diceCollection addObject:twoDice];
    
    Dice *threeDice = [[Dice alloc] init];
    NSLog(@"2 [%@]", threeDice.diceImages[threeDice.currentValue]);
    [_diceCollection addObject:threeDice];
    
    Dice *fourDice = [[Dice alloc] init];
    NSLog(@"3 [%@]", fourDice.diceImages[fourDice.currentValue]);
    [_diceCollection addObject:fourDice];
    
    Dice *fiveDice = [[Dice alloc] init];
    NSLog(@"4 [%@]", fiveDice.diceImages[fiveDice.currentValue]);
    [_diceCollection addObject:fiveDice];
    
    
}

- (void) rollDice{
    // if heldDice has die, then don't roll
    
    for (int i =0; i < _diceCollection.count; i++){
        Dice *dice = _diceCollection[i];
    
    //for (Dice *dice in _diceCollection) {
        if (![_diceHeld containsObject:dice]){
            [dice rollDice];
            NSLog(@"%i [%@]", i , dice.diceImages[dice.currentValue]);
        } else {
            NSLog(@"%i [%@] *", i ,dice.diceImages[dice.currentValue]);

        }
        
    }
}

- (void) holdDie: (int) diceChosen {
    [_diceHeld addObject:_diceCollection[diceChosen]];
}

- (void) unholdDie: (int) diceChosen {
    [_diceHeld removeObject:_diceCollection[diceChosen]];
}

- (void) resetDice {
    [_diceHeld removeAllObjects];
}

- (int) scoreTotal;{
    for (Dice *count in _diceCollection){
        _scoreTotalValue = _scoreTotalValue + count.currentValue;
    }
    NSLog(@"Current Score Total: %i", _scoreTotalValue);
    _scoreTotalValue = 0;
    return _scoreTotalValue;
}


@end
