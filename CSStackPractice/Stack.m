//
//  Stack.m
//  CSStackPractice
//
//  Created by Jesse Sahli on 8/21/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import "Stack.h"

@implementation Stack

- (instancetype)init
{
    self = [super init];
    if (self) {
        _head = [[Node alloc]init];
    }
    return self;
}

//pushes a new node in front of the header

-(void)push: (id) data {
    
    Node *newNode = [[Node alloc]init];
    newNode.data = data;
    newNode.link = self.head.link;
    self.head.link = newNode;
    
}

//shows the data of the first node attached to the header

-(id)peek {
    
    return self.head.link.data;
    
}

//removes the first node attached to header

-(void)pop {
    
    Node *nodeToPop = self.head.link;
    self.head.link = nodeToPop.link;
    nodeToPop = nil;
    
}


@end
