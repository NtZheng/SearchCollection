//
//  HashTable.m
//  SearchCollection
//
//  Created by nineteen on 4/4/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import "HashTable.h"

#define HashTableLength 100
#define NullKey -32768

@interface HashTable()

@property (nonatomic, strong) NSMutableArray *hashArray;

@end

@implementation HashTable

- (instancetype)init {
    if (self = [super init]) {
        self.hashArray = [NSMutableArray array];
        for (int i = 0; i < HashTableLength; i++) {
            [self.hashArray addObject:[NSNumber numberWithInteger:NullKey]];
        }
    }
    return self;
}

- (int)hash :(int)key {
    return key % HashTableLength;
}

- (void)insertValue :(NSNumber *)value {
    int index = [self hash:value.intValue];
    self.hashArray[index] = value;
}

- (BOOL)searchValue :(NSNumber *)value {
    int index = [self hash:value.intValue];
    if (value == self.hashArray[index]) {
        return YES;
    } else {
        return NO;
    }
}

- (void)showData {
    for (NSNumber *number in self.hashArray) {
        NSLog(@"%@",number);
    }
}



@end
