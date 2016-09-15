//
//  Equations.m
//  CSStackPractice
//
//  Created by Jesse Sahli on 8/21/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import "Equations.h"

@implementation Equations

//using stack to check for balanced parentheses

+ (void)equalParensCheck: (NSString*) myString {
    
    Stack *parenStack = [[Stack alloc]init];
    int length = (int)myString.length;
    
    for (int i = 0; i < length; i++) {
        
        char currentChar = [myString characterAtIndex:i];
        if (currentChar == '(') {
            [parenStack push:@"parenthesis"];
        } else if (currentChar == ')') {
            if (parenStack.head.link != nil) {
                [parenStack pop];
            } else {
                NSLog(@"The parentheses in this code are unbalanced");
                return;
            }
        }
    }
    
    if (parenStack.head.link != nil) {
        NSLog(@"The parentheses in this code are unbalanced");
    } else {
        NSLog(@"The parentheses in this code are balanced");
    }

}
@end
