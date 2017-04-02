//
//  BinarySearch.m
//  SearchCollection
//
//  Created by nineteen on 4/2/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

+ (int)binarySearchFor :(NSNumber *)key InArray :(NSMutableArray *)array from :(int)start to :(int)end {
    
    if (start < end) {
        int middle = (start + end)/2;
        if (array[middle] == key) {
            return middle;
        } else if (array[middle] > key) {
            return [self binarySearchFor:key InArray:array from:start to:middle - 1];
        } else {
            return [self binarySearchFor:key InArray:array from:middle + 1 to:end];
        }
    } else {
        return -1;
    }
    
}

+ (int)binarySearchFor :(NSNumber *)key InArray :(NSMutableArray *)array {
    return [self binarySearchFor:key InArray:array from:0 to:(int)array.count - 1];
}

@end
