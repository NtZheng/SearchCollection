//
//  BTree.h
//  SearchCollection
//
//  Created by nineteen on 4/4/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BTree : NSObject

/*
 * BTree是和二叉树不太一样的树
 * BTree出现的原因：
 * 当需要查找的数据源内存能够全部存下的时候，所有的操作都在内存中，那么时间复杂度也就是比较的次数，但是往往有些时候数据源非常庞大，内存是无法一次性将这么多数据源都装下的，所以就会出现内存和外存的数据交换，内存从外存中拿到数据之后在进行查找，要知道，内存和外存的数据交换所耗费的资源和时间都是比在内存中比较一次要大的多的，所以，如果内存每次从外存中读取一个数据进行比较，那么内外存交换的次数将会非常多。这时候引入了一种新的树来适应这种情况，B树规定一个节点可以不只有一个数据，同时一个节点拥有的孩子可以不止两个
 */

@end
