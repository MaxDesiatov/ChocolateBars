//
//  NSDirectoryEnumerator+MDFunctional.h
//  ChocolateBars
//
//  Created by Max Desyatov on 12/9/12.
//  Copyright (c) 2012 Max Desyatov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDirectoryEnumerator (MDFunctional)

- (NSArray *)filterUsingBlock:(BOOL (^)(id obj))block;

@end
