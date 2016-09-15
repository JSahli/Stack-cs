//
//  Stack.h
//  CSStackPractice
//
//  Created by Jesse Sahli on 8/21/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface Stack : NSObject

@property (strong, nonatomic) Node *head;

-(void)push: (id) data;
-(id)peek;
-(void)pop;

@end
