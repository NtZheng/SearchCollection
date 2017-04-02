//
//  IndexSearch.m
//  SearchCollection
//
//  Created by nineteen on 4/2/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "IndexSearch.h"

@implementation IndexSearch

/*
 * 稠密索引：直接将关键字用有序的索引对应起来
 * 分块索引：对稠密索引进行了一些改良，多个关键字构成一个块，然后对应一个索引，索引依然有序，块内部无序
 * 倒排索引：前面两种都是通过索引来查找关键字，倒排索引是反过来，通过关键字来查找索引，这是浏览器搜索的最基本的方法
 */

@end
