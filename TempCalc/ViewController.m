//
//  ViewController.m
//  TempCalc
//
//  Created by Hemant V. Torsekar on 2015-04-14.
//  Copyright (c) 2015 Hemant V. Torsekar. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
}

//- (NSString *)fToC:(NSString *)fahrenheit
//{
//    double fah = [fahrenheit doubleValue];
//    double cel = (fah - 32) / 1.8;
//    
//    NSString *resultString = [[NSString alloc]
//                             initWithFormat: @"%.1f °C", cel];
//    return resultString;
//}

- (void)convertFahrenheitToCelsius
{
    double fahrenheit = [_tempText.text doubleValue];
    double celsius = (fahrenheit - 32) / 1.8;
    
    NSString *resultLabel = [[NSString alloc]
                              initWithFormat: @"%.1f °C", celsius];
    _resultLabel.text = resultLabel;
}

- (void)convertCelsiusToFahrenheit
{
    double celsius = [_tempText.text doubleValue];
    double fahrenheit = (celsius*1.8) + 32;
    
    NSString *resultLabel = [[NSString alloc]
                             initWithFormat: @"%.1f °F", fahrenheit];
    _resultLabel.text = resultLabel;
}

//- (void)convertCToF:(NSString *)celsius
//{
//    double cel = [_tempText.text doubleValue];
//    double fah = (celsius*1.8) + 32;
//    
//    NSString *resultLabel = [[NSString alloc]
//                             initWithFormat: @"%.1f °F", fah];
//    _resultLabel.text = resultLabel;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)temperatureSelected:(UISegmentedControl *)sender {
    NSInteger selectedIndex = self.temperatureSelector.selectedSegmentIndex;
    switch (selectedIndex)
    {
        // celsius
        case 0:
            [self convertCelsiusToFahrenheit];
            self.symbolValue.text = @"C";
            break;
        // fahrenheit
        case 1:
            [self convertFahrenheitToCelsius];
            self.symbolValue.text = @"F";
            break;
    }
}


/*- (IBAction)convertTemp:(id)sender {
    double fahrenheit = [_tempText.text doubleValue];
    double celsius = (fahrenheit - 32) / 1.8;
    
    NSString *resultString = [[NSString alloc]
                              initWithFormat: @"%.1f C", celsius];
    _resultLabel.text = resultString;
}*/




-(IBAction)tempTextReturn:(id)sender
{
    [sender resignFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    
    UITouch *touch = [[event allTouches] anyObject];
    if ([_tempText isFirstResponder] && [touch view] != _tempText) {
        [_tempText resignFirstResponder];
        
    }
    
    
    
    [super touchesBegan:touches withEvent:event];
}

@end
