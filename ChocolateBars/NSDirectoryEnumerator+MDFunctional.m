//
//  NSDirectoryEnumerator+MDFunctional.m
//  ChocolateBars
//
//  Created by Max Desyatov on 12/9/12.
//  Copyright (c) 2012 Max Desyatov. All rights reserved.
//

#import "NSDirectoryEnumerator+MDFunctional.h"

@implementation NSDirectoryEnumerator (MDFunctional)

- (NSArray *)filterUsingBlock:(BOOL (^)(id obj))block
{
    NSMutableArray *result = [NSMutableArray new];
    
    for (id element in self)
    {
        if (block(element))
            [result addObject:element];
    }
    
    return result;
}

@end
