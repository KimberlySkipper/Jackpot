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
    //create an instance for each number
    NSUInteger _number1;
    NSUInteger _number2;
    NSUInteger _number3;
    NSUInteger _number4;
    NSUInteger _number5;
    NSUInteger _number6;
}

@end

@implementation Ticket


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
//if aNumber is generated then do not repeat.
//[appendstring:initWithQuickPick]


// this method is used to convert int to string
- (NSString *)ticketText
{
    return [NSString stringWithFormat:@"%ld    %ld    %ld    %ld    %ld    %ld", _number1, _number2, _number3, _number4, _number5,_number6];
}

@end
