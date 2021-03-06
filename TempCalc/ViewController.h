//
//  ViewController.h
//  TempCalc
//
//  Created by Hemant V. Torsekar on 2015-04-14.
//  Copyright (c) 2015 Hemant V. Torsekar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISegmentedControl *temperatureSelector;

@property (strong, nonatomic) IBOutlet UITextField *tempText;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)temperatureSelected:(id)sender;

- (void)convertTemp:(NSNumber*)valueToConvert;
@property (weak, nonatomic) IBOutlet UILabel *symbolValue;

@end


//http://stackoverflow.com/questions/19367847/different-button-actions-for-each-segmented-control-segment