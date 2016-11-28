//
//  ViewController.m
//  Jackpot
//
//  Created by Kimberly Skipper on 11/28/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "JackpotViewController.h"
#import "Ticket.h"

@interface JackpotViewController () 

@property NSMutableArray *tickets;


@end

@implementation JackpotViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tickets = [[NSMutableArray alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)addTicket:(UIBarButtonItem *)sender
{
    [self.tickets addObject:[[Ticket alloc] initWithQuickPick]];
    
    [self.tableView reloadData];
}

#pragma mark - Table view Data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //returns one section of cells (changed from 0 to 1)
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tickets.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TicketCell" forIndexPath:indexPath];
    
    
   // Jackpot *aTicket = self.ticketNumber[indexPath.row];
   // cell.textLabel.text = aTicket;
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)arc4random() % 54];

    
    return cell;
}



@end
