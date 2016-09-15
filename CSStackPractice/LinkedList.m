//
//  LinkedList.m
//  CSStackPractice
//
//  Created by Jesse Sahli on 8/21/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList


- (instancetype)init
{
    self = [super init];
    if (self) {
        _head = [[Node alloc]init];
    }
    return self;
}


-(void)push: (id) data {
    
    Node *newNode = [[Node alloc]init];
    newNode.data = data;
    newNode.link = self.head.link;
    self.head.link = newNode;
    
}



-(void)pop {
    
    Node *nodeToPop = self.head.link;
    self.head.link = nodeToPop.link;
    nodeToPop = nil;
    
}



-(void)deleteNodeAfterIndex: (int) index {
    
    Node *myNode = self.head;
    
    for (int i = 0; i < index; i++) {
        myNode = myNode.link;
    }
    
    Node *nodeToDelete = myNode.link;
    Node *secondLink = myNode.link.link;
    myNode.link = secondLink;
    
    nodeToDelete = nil;
}

-(Node*)findMiddleNode {
    
    Node *myNode = self.head;
    int nodeCounter = 0;
    
    while (myNode.link != NULL) {
        myNode = myNode.link;
        nodeCounter++;
    }
    
    int middle = nodeCounter / 2;
    
    myNode = self.head;
    for (int i = 0; i <= middle; i++) {
        myNode = myNode.link;
    }
    return myNode;
}



@end
