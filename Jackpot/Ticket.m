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


@end
