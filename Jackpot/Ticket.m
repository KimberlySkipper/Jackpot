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
    
    //create an instance for each number
    NSUInteger _number1;
    NSUInteger _number2;
    NSUInteger _number3;
    NSUInteger _number4;
    NSUInteger _number5;
    NSUInteger _number6;
    
    //Declare instance NSMutable Array
    NSMutableArray *numberArray;
}

@end

@implementation Ticket





-(instancetype)initWithQuickPick
{
    {
        self = [super init];
        if (self)
        {
            numberArray = [[NSMutableArray alloc] init];
            
            for (int i = 0; i < 6; i++)
            {
                NSUInteger randomInt = 0;
                NSNumber *randomNumber;
                do
                {
                    randomInt = arc4random() % 54 + 1;
                    randomNumber = [NSNumber numberWithUnsignedInteger:randomInt];
                }
                while ([numberArray containsObject:randomNumber]);
                [numberArray addObject:randomNumber];
            }
        }
        return self;
    }
    
}
- (NSString *)ticketText
{
    return [NSString stringWithFormat:@"%@  %@  %@  %@  %@  %@", [numberArray[0] stringValue],[numberArray[1] stringValue], [numberArray[2]stringValue], [numberArray[3] stringValue], [numberArray[4] stringValue], [numberArray [5] stringValue] ];
}


@end


