//
//  BinarySortTreeSearch.m
//  SearchCollection
//
//  Created by nineteen on 4/2/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "BinarySortTreeSearch.h"
#import "BinarySortTreeNode.h"

@interface BinarySortTreeSearch()

@property (nonatomic, strong) BinarySortTreeNode *root;

@end

@implementation BinarySortTreeSearch

- (int)binarySortTreeSearchFor :(NSNumber *)key {
    return [self binarySortTreeSearchFor:key node:self.root];
}

- (BOOL)binarySortTreeSearchFor :(NSNumber *)key node :(BinarySortTreeNode *)node {
    if (node != nil) {
        if (key == node.value) {
            return YES;
        } else if (key > node.value) {
            return [self binarySortTreeSearchFor:key node:node.rightTreeNode];
        } else {
            return [self binarySortTreeSearchFor:key node:node.leftTreeNode];
        }
    } else {
        return NO;
    }
}

- (void)showData {
    [self inOrderTraverse:self.root];
}

- (void)inOrderTraverse :(BinarySortTreeNode *)node {
    if (node != nil) {
        [self inOrderTraverse:node.leftTreeNode];
        NSLog(@"%@",node.value);
        [self inOrderTraverse:node.rightTreeNode];
    }
}

- (void)insertValueToBinarySortTree :(NSNumber *)value {
    if (self.root == nil) {
        self.root = [[BinarySortTreeNode alloc]init];
        self.root.value = value;
    } else {
        [self insertTreeNode:self.root value:value];
    }
}

- (void)insertTreeNode :(BinarySortTreeNode *)root value :(NSNumber *)value {
    if (value > root.value) {
        if (root.rightTreeNode == nil) {
            BinarySortTreeNode *node = [[BinarySortTreeNode alloc]init];
            node.value = value;
            root.rightTreeNode = node;
        } else {
            [self insertTreeNode:root.rightTreeNode value:value];
        }
    } else if (value < root.value) {
        if (root.leftTreeNode == nil) {
            BinarySortTreeNode *node = [[BinarySortTreeNode alloc]init];
            node.value = value;
            root.leftTreeNode = node;
        } else {
            [self insertTreeNode:root.leftTreeNode value:value];
        }
    } else {
        return;
    }
}

- (BOOL)deleteValueFromBinarySortTree :(NSNumber *)value {
    return [self deleteTreeNode:self.root value:value];
}

- (BOOL)deleteTreeNode :(BinarySortTreeNode *)root value :(NSNumber *)value {
    if (root == nil) {
        NSLog(@"二叉搜索树中没有该节点");
        return NO;
    }
    if (root.value == value) {
        return [self delete:root];
    } else if (root.value < value) {
        return [self deleteTreeNode:root.rightTreeNode value:value];
    } else {
        return [self deleteTreeNode:root.leftTreeNode value:value];
    }
}

/*
 * 由于不知道如何改变参数(试过传指针)，所以下面代码逻辑上是对的，但是没有实际作用
 */
- (BOOL)delete :(BinarySortTreeNode *)root {
    
    if (root.leftTreeNode == nil && root.rightTreeNode != nil) {
        root = root.rightTreeNode;
    } else if (root.leftTreeNode != nil && root.rightTreeNode == nil) {
        root = root.leftTreeNode;
    } else if (root.leftTreeNode == nil && root.rightTreeNode == nil) {
        root = nil;
    } else {
        BinarySortTreeNode *newNode = root.leftTreeNode.rightTreeNode;// root.rightTreeNode.leftTreeNode
        root.value = newNode.value;
        [self delete:newNode];
    }
    return YES;
}

@end
