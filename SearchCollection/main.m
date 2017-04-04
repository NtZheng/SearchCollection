//
//  main.m
//  SearchCollection
//
//  Created by nineteen on 4/2/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SequentialSearch.h"
#import "BinarySearch.h"
#import "BinarySortTreeSearch.h"
#import "HashTable.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
        NSMutableArray *array = [NSMutableArray array];
        [array addObject:[NSNumber numberWithInt:0]];
        for (int i = 0; i < 10; i++) {
            int random = arc4random() % 100 + 1;
            NSNumber *number = [NSNumber numberWithInt:random];
            [array addObject:number];
        }
        
        for (NSNumber *number in array) {
            NSLog(@"%@",number);
        }
        
        NSLog(@"------");
        
        NSLog(@"%d",[BinarySearch binarySearchFor:@0 InArray:array]);
         */
        
        /*
        BinarySortTreeSearch *binarySortTreeSearch = [[BinarySortTreeSearch alloc]init];
        [binarySortTreeSearch insertValueToBinarySortTree:@2];
        for (int i = 0; i < 10; i++) {
            int random = arc4random() % 100 + 1;
            NSNumber *number = [NSNumber numberWithInt:random];
            [binarySortTreeSearch insertValueToBinarySortTree:number];
        }
        
        [binarySortTreeSearch showData];
        
        NSLog(@"----------");
        
        [binarySortTreeSearch deleteValueFromBinarySortTree:@2];
        
        [binarySortTreeSearch showData];
         */
        
        HashTable *hashTable = [[HashTable alloc]init];
        [hashTable insertValue:[NSNumber numberWithInt:102]];
        for (int i = 0; i < 30; i++) {
            int random = arc4random() % 100 + 101;
            [hashTable insertValue:[NSNumber numberWithInt:random]];
        }
        [hashTable showData];
        NSLog(@"%d",[hashTable searchValue:[NSNumber numberWithInt:102]]);
    }
    return 0;
}

