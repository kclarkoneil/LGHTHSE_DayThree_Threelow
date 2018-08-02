//
//  main.m
//  Threelow
//
//  Created by Nathan Wainwright on 2018-08-01.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"



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
// If you are not already doing so, now is a good time to refactor your code to store your Dice instances in an array that is created before your while loop.
        
        char inputChars[255];
        
        GameController *testGame = [[GameController alloc] init];
        
        [testGame newGame];

        
        while (true) {
            
            
//            for (int i = 0; i < diceCollection.count; i++) {
//                NSLog(@"%i diceroll: %@"i, diceCollection);
//            }

            
            
            
            
            NSLog(@"Prompt:");
            fgets(inputChars, 255, stdin);
            NSString *inputwithEnter = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            NSString *finalInputString = [inputwithEnter stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
            NSArray *splitInput = [finalInputString componentsSeparatedByString:@" "];
            NSString * collected = [splitInput firstObject];
            
            //NSLog(@"User Enter: %@", finalInputString); // input check
            
            if ([finalInputString isEqualToString:@"roll"]) {
                [testGame rollDice];
            }
            
            if ([collected isEqualToString:@"hold"]) {
                if (splitInput.count == 2) {
                NSString *choiceIndex = splitInput[1];
                NSInteger choiceNumber = [choiceIndex integerValue];
                    [testGame holdDie:choiceNumber];
                }
            }
            
        
        
        }
        
        

        
        
        
        
        
    }

    return 0;
}
