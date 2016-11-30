//
//  WinningNumberViewController.m
//  Jackpot
//
//  Created by Kimberly Skipper on 11/29/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "WinningNumberViewController.h"
#import "JackpotViewController.h"
#import "Ticket.h"

@interface WinningNumberViewController () <UIPickerViewDelegate,UIPickerViewDataSource, WinningNumberPickerViewDelegate>

@property(weak, nonatomic) IBOutlet UIPickerView *winningTicketPickerView;

@end

@implementation WinningNumberViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action Handlers

-(IBAction)compareWinningTicket:(UIButton *)sender
{
    NSUInteger winningNumber = [self.winningTicketPickerView selectedRowInComponent:5] + 1;
    
   /* UIPickerViewDelegate *delegate = yourPickerView.delegate;
    NSString *titleYouWant = [delegate pickerView:yourPickerView titleForRow:[yourPickerView selectedRowInComponent:0] forComponent:0];
*/
    return;
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   if ([segue.identifier isEqualToString:@"winningNumberPickerViewSegue"])
   {
       WinningNumberViewController *winningNumVC = [segue destinationViewController];
        winningNumVC.delegate=self;
   }
    
 
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark - Picker View Data Source

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 6;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 53;
}

#pragma mark -Picker View Delegate

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [NSString stringWithFormat:@"%ld", (long)  row + 1];
}

#pragma mark

-(void)winningTicketWasChosen:(NSMutableArray *)winningNumbers
{
  //  cell.textLabel.text = [winningNumbers ticketText];
 //   return cell;
}


@end
