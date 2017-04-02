//
//  SequentialSearch.m
//  SearchCollection
//
//  Created by nineteen on 4/2/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "SequentialSearch.h"

@implementation SequentialSearch

+ (int)sequentialSearchFor :(NSNumber *)key InArray :(NSMutableArray *)array {
    array[0] = key;
    int i = (int)array.count - 1;
    while ([array[i--] isNotEqualTo:key]) {
        
    }
    return i;
}

@end
