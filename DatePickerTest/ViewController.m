//
//  ViewController.m
//  DatePickerTest
//
//  Created by Phu Nguyen on 7/21/20.
//  Copyright © 2020 Phu Nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    UIDatePicker *datePicker = [[UIDatePicker alloc] init];
    datePicker.datePickerMode = UIDatePickerModeDate;
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:
                            NSCalendarIdentifierJapanese];
    datePicker.calendar = calendar;
    [datePicker setMaximumDate:[NSDate date]];
    [self.textField setInputView:datePicker];
    [self.textField reloadInputViews];
}


@end
