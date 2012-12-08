//
//  MDAppDelegate.h
//  ChocolateBars
//
//  Created by Max Desyatov on 12/8/12.
//  Copyright (c) 2012 Max Desyatov. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MDAppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSArrayController *arrayController;
@property (weak) IBOutlet NSTableView *tableView;

@property (assign) IBOutlet NSWindow *window;
@property (readwrite, copy) NSMutableArray *cocoaPods;

@end
