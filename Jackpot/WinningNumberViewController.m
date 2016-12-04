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

@interface WinningNumberViewController () <UIPickerViewDelegate,UIPickerViewDataSource>

@property(weak, nonatomic) IBOutlet UIPickerView *winningTicketPickerView;

@property NSMutableArray *winningNumbers;

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
    self.winningNumbers  = [[NSMutableArray alloc] init];
    
    NSUInteger tmp = [self.winningTicketPickerView selectedRowInComponent:0];
    [self.winningNumbers addObject:[NSNumber numberWithInteger:tmp]];
    
    tmp = [self.winningTicketPickerView selectedRowInComponent:1];
    [self.winningNumbers addObject:[NSNumber numberWithInteger:tmp]];
    
    tmp = [self.winningTicketPickerView selectedRowInComponent:2];
    [self.winningNumbers addObject:[NSNumber numberWithInteger:tmp]];
    
    tmp = [self.winningTicketPickerView selectedRowInComponent:3];
    [self.winningNumbers addObject:[NSNumber numberWithInteger:tmp]];
    
    tmp = [self.winningTicketPickerView selectedRowInComponent:4];
    [self.winningNumbers addObject:[NSNumber numberWithInteger:tmp]];
    
    tmp = [self.winningTicketPickerView selectedRowInComponent:5];
    [self.winningNumbers addObject:[NSNumber numberWithInteger:tmp]];
    
     [self.delegate winningTicketWasChosen: self.winningNumbers];
    
    return;
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
/*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
   if ([segue.identifier isEqualToString:@"CompareWinningNumbersSeque"])
   {
      
   }
    
 
    
    
} */

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




@end
