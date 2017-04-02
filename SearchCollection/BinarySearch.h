//
//  BinarySearch.h
//  SearchCollection
//
//  Created by nineteen on 4/2/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinarySearch : NSObject
/*
 * 插值查找：将key到start的大小和end到start的大小做比例，对mid做处理
 *         如果数据均匀，优与二分
 *         如果数据极端，差别很大，劣与二分
 * 斐波那契查找：利用斐波那契数据对mid做处理
 *
 */

+ (int)binarySearchFor :(NSNumber *)key InArray :(NSMutableArray *)array;

@end
