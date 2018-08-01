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
// ABOVE DONE
//
//        When a user inputs the word roll, randomize the values and print them.
//        Place this code inside a while loop, so users can re-roll as often as needed.
// ABOVE DONE
        
        char inputChars[255];

        while (true) {

            NSLog(@"Prompt:");
            fgets(inputChars, 255, stdin);
            NSString *inputwithEnter = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            NSString *finalInputString = [inputwithEnter stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
            
            NSLog(@"User Enter: %@", finalInputString); // input check
            
            Dice *oneDice = [[Dice alloc] init];
            NSLog(@"%i", oneDice.currentValue);
            
            Dice *twoDice = [[Dice alloc] init];
            NSLog(@"%i", twoDice.currentValue);
            
            Dice *threeDice = [[Dice alloc] init];
            NSLog(@"%i", threeDice.currentValue);
            
            Dice *fourDice = [[Dice alloc] init];
            NSLog(@"%i", fourDice.currentValue);
            
            Dice *fiveDice = [[Dice alloc] init];
            NSLog(@"%i", fiveDice.currentValue);
        
        }
        
        

        
        
        
        
        
    }
    return 0;
}
