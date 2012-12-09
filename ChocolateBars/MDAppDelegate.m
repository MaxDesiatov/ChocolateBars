//
//  MDAppDelegate.m
//  ChocolateBars
//
//  Created by Max Desyatov on 12/8/12.
//  Copyright (c) 2012 Max Desyatov. All rights reserved.
//

#import "MDAppDelegate.h"
#import "MDCocoaPod.h"
#import "NSDirectoryEnumerator+MDFunctional.h"

@implementation MDAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSFileManager *fm = [NSFileManager defaultManager];
    
    NSDirectoryEnumerator *dirEnumerator =
        [fm enumeratorAtURL:[NSURL URLWithString:@"file:///Users/wollner/.cocoapods"]
 includingPropertiesForKeys:@[NSURLNameKey,
                              NSURLIsReadableKey,
                              NSURLIsDirectoryKey]
                    options:NSDirectoryEnumerationSkipsHiddenFiles
               errorHandler:nil];
    
    NSArray *arr = [dirEnumerator filterUsingBlock:^BOOL(NSURL *theURL)
    {
        // Retrieve the file name. From NSURLNameKey, cached during the enumeration.
        NSString *fileName;
        [theURL getResourceValue:&fileName forKey:NSURLNameKey error:NULL];
        
        // Retrieve whether a directory. From NSURLIsDirectoryKey, also
        // cached during the enumeration.
        NSNumber *isDirectory;
        [theURL getResourceValue:&isDirectory
                          forKey:NSURLIsDirectoryKey
                           error:NULL];
        
        return ([isDirectory boolValue] == NO &&
                [fileName hasSuffix:@".podspec"]);
    }];
    
    _cocoaPods = [NSMutableArray new];
    
    [arr enumerateObjectsUsingBlock:^(NSURL *url, NSUInteger idx, BOOL *stop) {
        MDCocoaPod *newPod = [MDCocoaPod new];
        newPod.name = [url lastPathComponent];
        newPod.version = @"yes it does!";
        newPod.podFile = [NSData dataWithContentsOfURL:url];
        [_arrayController addObject:newPod];
    }];
    
//    [_tableView reloadData];
}

@end
