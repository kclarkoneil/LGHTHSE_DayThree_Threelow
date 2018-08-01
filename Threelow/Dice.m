//
//  Dice.m
//  Threelow
//
//  Created by Nathan Wainwright on 2018-08-01.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (int) rollDice{
    _currentValue = arc4random_uniform(6) + 1;
    return _currentValue;
}

@end
