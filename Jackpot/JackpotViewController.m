//
//  ViewController.m
//  Jackpot
//
//  Created by Kimberly Skipper on 11/28/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "JackpotViewController.h"
#import "Ticket.h"

@interface JackpotViewController () <UIPickerViewDelegate, WinningNumberPickerViewDelegate>

@property NSMutableArray *listOfTickets;

@end

@implementation JackpotViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    if (!self.listOfTickets)
    {
        self.listOfTickets = [[NSMutableArray alloc] init];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)winningTicketWasChosen:(NSMutableArray *) winningNumbers
{
    
    // loop through all tickets and check each one
    for (int i=0; i<self.listOfTickets.count; i++)
    {
        [self.listOfTickets[i] checkWithWinningTicket:winningNumbers];
    }
    

    // reload table data
    [self.tableView reloadData];

}


-(IBAction)addTicket:(UIBarButtonItem *)sender
{
   // Ticket *tmpTicket = [Ticket alloc]; (have a ticket in memory and reference *tmp ticket is pointed at the ticket)
   // [tmpTicket initWithQuickPick];
   // [self.listOfTickets addObject:tmpTicket];
    
    [self.listOfTickets addObject:[[Ticket alloc] initWithQuickPick]];

    
    [self.tableView reloadData];
}

#pragma mark -Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"selectWinningNumberPickerViewSegue"])
    {
        UIPickerView *numberPickerVC = (UIPickerView *)[segue destinationViewController];
        numberPickerVC.delegate = self;
    }
}




#pragma mark - Table view Data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //returns one section of cells (changed from 0 to 1)
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.listOfTickets.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TicketCell" forIndexPath:indexPath];
    
    //Using the row to get a ticket for a specific row.
    Ticket *aTicket = self.listOfTickets[indexPath.row];
    
    //Printing a ticket to a cell.
    cell.textLabel.text = [aTicket ticketText];

    
    return cell;
}



@end
