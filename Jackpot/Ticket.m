//
//  Jackpot.m
//  Jackpot
//
//  Created by Kimberly Skipper on 11/28/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "Ticket.h"
// make the jackpot ticket private.
@interface Ticket ()
{
    NSUInteger _number1;
    NSUInteger _number2;
    NSUInteger _number3;
    NSUInteger _number4;
    NSUInteger _number5;
    NSUInteger _number6;
}

@end

@implementation Ticket

//NSMutableArray *ticketNumber = [NSUInteger :@"%ld", @"%ld", @"%ld", @"%ld", @"%ld", @"%ld" (long),arc4random() % 54];

-(instancetype)initWithQuickPick
{
    self =[super init];
    if (self)
    {
        _number1 = arc4random() % 54;
        _number2 = arc4random() % 54;
        _number3 = arc4random() % 54;
        _number4 = arc4random() % 54;
        _number5 = arc4random() % 54;
        _number6 = arc4random() % 54;
    }
    return self;
}
//  if there is a number then append string with random number until there are six numbers.
//[appendstring:initWithQuickPick]
// forLoop i=1, i<=5, i++

// this method is used to convert int to string
- (NSString *)ticketText
{
    return [NSString stringWithFormat:@"%ld    %ld    %ld    %ld    %ld    %ld", _number1, _number2, _number3, _number4, _number5,_number6];
}
// @"%ld", @"%ld", @"%ld", @"%ld", @"%ld",
//, (long)_number2, (long)_number3, (long)_number4, (long)_number5, (long)_number6

@end
