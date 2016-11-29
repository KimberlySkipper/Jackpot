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
    NSUInteger _number;
}

@end

@implementation Ticket

//NSMutableArray *ticketNumber = [NSUInteger :@"%ld", @"%ld", @"%ld", @"%ld", @"%ld", @"%ld" (long),arc4random() % 54];

-(instancetype)initWithQuickPick
{
    self =[super init];
    if (self)
    {
        _number = arc4random() % 54;
    }
    return self;
}
//  if there is a number then append sring with random number until there are six numbers.
//[appendstring:initWithQuickPick]
// forLoop i=1, i<=5, i++

// this method is used to convert int to string
- (NSString *)ticketText
{
    return [NSString stringWithFormat:@"%ld", (long)_number];
}

@end
