//
//  TemperatureViewController.m
//  Temperature Converter
//
//  Created by Linkai Xi on 1/8/14.
//  Copyright (c) 2014 Linkai Xi. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()
@property (weak, nonatomic) IBOutlet UITextField *FTextField;
@property (weak, nonatomic) IBOutlet UITextField *CTextField;
@property (weak, nonatomic) IBOutlet UIButton *ConvertButton;


- (IBAction)ConvertButtonPressed:(id)sender;
- (IBAction)onTap:(id)sender;
- (void) updateTemperature;

@end

@implementation TemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Temperature";
    }
    return self;
}

- (IBAction)onTap:(id)sender{
    [self.view endEditing:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void) ConvertButtonPressed:(id)sender{
    [self.view endEditing:YES];
    NSLog(@"convert button pressed");
    [self updateTemperature];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) updateTemperature{
    if ([self.FTextField.text length] > 0) {
        double fDegree = [self.FTextField.text doubleValue];
        double cDegree = (fDegree - 32) * (5.0/9.0);
        self.CTextField.text = [NSString stringWithFormat:@"%.0f", cDegree ];
    }else if ([self.CTextField.text length] > 0){
        double cDegree = [self.CTextField.text doubleValue];
        double fDegree = (cDegree * 9.0/5.0) + 32;
        self.FTextField.text = [NSString stringWithFormat:@"%.0f", fDegree];
    }
}

@end
