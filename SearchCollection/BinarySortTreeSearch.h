//
//  BinarySortTreeSearch.h
//  SearchCollection
//
//  Created by nineteen on 4/2/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinarySortTreeSearch : NSObject

- (void)showData;
- (void)insertValueToBinarySortTree :(NSNumber *)value;
- (int)binarySortTreeSearchFor :(NSNumber *)key;

@end
