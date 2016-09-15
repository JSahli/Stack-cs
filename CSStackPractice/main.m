//
//  main.m
//  CSStackPractice
//
//  Created by Jesse Sahli on 8/21/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stack.h"
#import "Equations.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        Stack *newStack = [[Stack alloc]init];
        
        [newStack push:@"alf"];
        NSLog(@"peek shows: %@", [newStack peek]);
        
        [newStack push:@"alfa"];
        NSLog(@"peek shows: %@", [newStack peek]);
        
        [newStack push:@"sprouts"];
        NSLog(@"peek shows: %@", [newStack peek]);
        
        [newStack pop];
        NSLog(@"peek shows: %@", [newStack peek]);
        //prints alfa
        
        [newStack pop];
        NSLog(@"peek shows: %@", [newStack peek]);
        //prints alf
        
        //this should print that parens are unbalanced
        NSString *codeStringToCheck = @"(this ))is the code to check)";
        [Equations equalParensCheck:codeStringToCheck];
        
        //this should print that parens are balanced
        NSString *moreCode = @"(I like (to) solve puzzles (Algorithms are really cool) more than your average joe)";
        [Equations equalParensCheck:moreCode];

    }
    return 0;
}


