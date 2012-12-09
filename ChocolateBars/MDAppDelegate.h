//
//  MDAppDelegate.h
//  ChocolateBars
//
//  Created by Max Desyatov on 12/8/12.
//  Copyright (c) 2012 Max Desyatov. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MDAppDelegate : NSObject <NSApplicationDelegate, NSTextFieldDelegate>

@property (weak) IBOutlet NSArrayController *arrayController;
@property (weak) IBOutlet NSTableView *tableView;
@property (weak) IBOutlet NSTextField *countIndicator;

@property (assign) IBOutlet NSWindow *window;
@property (readwrite, retain) NSMutableArray *cocoaPods;
@property (readwrite, assign) NSUInteger podsTotalCount;

@end
