//
//  BinarySortTreeNode.h
//  SearchCollection
//
//  Created by nineteen on 4/2/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinarySortTreeNode : NSObject

@property (nonatomic, strong) BinarySortTreeNode *leftTreeNode;
@property (nonatomic, strong) BinarySortTreeNode *rightTreeNode;
@property (nonatomic, strong) NSNumber *value;

@end
