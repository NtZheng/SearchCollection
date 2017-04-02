//
//  main.m
//  SearchCollection
//
//  Created by nineteen on 4/2/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SequentialSearch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
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
        
        NSLog(@"%d",[SequentialSearch sequentialSearchFor:@3 InArray:array]);
        
        
    }
    return 0;
}
