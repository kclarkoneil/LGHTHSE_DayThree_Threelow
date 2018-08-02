//
//  Dice.h
//  Threelow
//
//  Created by Nathan Wainwright on 2018-08-01.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property int currentValue;
@property NSArray *diceImages;

- (int) rollDice;

@end
