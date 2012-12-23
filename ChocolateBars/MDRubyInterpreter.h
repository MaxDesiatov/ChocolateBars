//
//  Calculator.h
//  pegged
//
//  Created by Matt Diephouse on 1/1/10.
//  This code is in the public domain.
//

#import <Foundation/Foundation.h>


@interface MDRubyInterpreter : NSObject
{
    NSNumberFormatter *_formatter;
    NSMutableArray *_stack;
	NSMutableArray *_rhs;
    
    BOOL _negative;
}

@property (weak, readonly) NSNumber *result;
@property (readonly) NSMutableArray *lhs;

- (void)add;
- (void)divide;
- (void)exponent;
- (void)multiply;
- (void)subtract;
- (void)negative;
- (void)pushNumber:(NSString *)text;
- (void)pushLhs:(NSString *)text;
- (void)pushRhs:(NSString *)text;

@end
