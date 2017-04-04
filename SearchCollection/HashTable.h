//
//  HashTable.h
//  SearchCollection
//
//  Created by nineteen on 4/4/17.
//  Copyright © 2017 nineteen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HashTable : NSObject

- (void)insertValue :(NSNumber *)value;
- (BOOL)searchValue :(NSNumber *)value;
- (void)showData;

@end
