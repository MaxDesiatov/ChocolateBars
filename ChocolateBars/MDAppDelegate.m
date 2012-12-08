//
//  MDAppDelegate.m
//  ChocolateBars
//
//  Created by Max Desyatov on 12/8/12.
//  Copyright (c) 2012 Max Desyatov. All rights reserved.
//

#import "MDAppDelegate.h"
#import "MDCocoaPod.h"

@implementation MDAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSLog(@"invoked");
    MDCocoaPod *newPod = [MDCocoaPod new];
    newPod.name = @"it works!";
    newPod.version = @"yes it does!";
    _cocoaPods = [NSMutableArray new];
    [_arrayController addObject:newPod];
    [_tableView reloadData];
}

@end
