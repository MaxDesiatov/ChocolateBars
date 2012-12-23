//
//  MDCocoaPod.m
//  ChocolateBars
//
//  Created by Max Desyatov on 12/9/12.
//  Copyright (c) 2012 Max Desyatov. All rights reserved.
//

#import "MDCocoaPod.h"
#import "Ruby.h"
#import "MDRubyInterpreter.h"

@implementation MDCocoaPod

- (NSData *)podFileContents
{
	NSData *result = [NSData dataWithContentsOfURL:_podFileURL];
	
	NSError *error = nil;
	NSString *file = [_podFileURL absoluteString];
	
	NSString *contents = [[NSString alloc] initWithContentsOfFile:file
														 encoding:NSUTF8StringEncoding
															error:&error];
	
	MDRubyInterpreter *interpreter = [MDRubyInterpreter new];
	Ruby *parser     = [Ruby new];
	parser.interpreter = interpreter;
	BOOL retval = [parser parseString:contents];
	
	if (retval)
		NSLog(@"lhs is %@", interpreter.lhs);
	
	return result;
}

- (NSString *)name
{
	return [_podFileURL lastPathComponent];
}

@end
