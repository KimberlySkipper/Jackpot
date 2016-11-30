//
//  ViewController.h
//  Jackpot
//
//  Created by Kimberly Skipper on 11/28/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WinningNumberPickerViewDelegate

-(void)winningTicketWasChosen:(NSMutableArray *) winningNumbers;

@end

@interface JackpotViewController : UITableViewController



@end

