//
//  AVLTree.m
//  SearchCollection
//
//  Created by nineteen on 4/3/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "AVLTree.h"

@implementation AVLTree

/*
 * AVL树是二叉搜索树的改进版本
 * 原因：由于二叉搜索树是不稳定的，可能会发生两边的高度差别太大，最坏情况下为一颗斜树，那么这个时候查找的时间复杂度就和普通的无序表一样，为O(n)
 * AVL树的改进：AVL树要求对于树中的每个节点，左子树和右子树的高度相差不超过1，这样就避免了以上二叉搜索树在最坏情况下发生的问题
 */

@end
