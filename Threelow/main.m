//
//  main.m
//  Threelow
//
//  Created by Nathan Wainwright on 2018-08-01.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Create a Dice class.
//        It should have a property to store its current value, and a method to randomize that value.
//        Make five instances of the Dice class, randomize their values and print them.
        
        Dice *oneDice = [[Dice alloc] init];
        [oneDice rollDice];
        NSLog(@"%i", oneDice.currentValue);
        
        Dice *twoDice = [[Dice alloc] init];
        [twoDice rollDice];
        NSLog(@"%i", twoDice.currentValue);
        
        Dice *threeDice = [[Dice alloc] init];
        [threeDice rollDice];
        NSLog(@"%i", threeDice.currentValue);
        
        Dice *fourDice = [[Dice alloc] init];
        [fourDice rollDice];
        NSLog(@"%i", fourDice.currentValue);
        
        Dice *fiveDice = [[Dice alloc] init];
        [fiveDice rollDice];
        NSLog(@"%i", fiveDice.currentValue);
        
        

        
        
        
        
        
    }
    return 0;
}
