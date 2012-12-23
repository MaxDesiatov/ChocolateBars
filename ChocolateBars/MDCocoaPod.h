//
//  MDCocoaPod.h
//  ChocolateBars
//
//  Created by Max Desyatov on 12/9/12.
//  Copyright (c) 2012 Max Desyatov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MDCocoaPod : NSObject

@property (readonly) NSString *name;
@property (readwrite, copy) NSString *version;
@property (readwrite, copy) NSURL *podFileURL;
@property (readonly) NSData *podFileContents;

@end
