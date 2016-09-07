//
//  ViewController.h
//  ColorSlider
//
//  Created by Jesse Sahli on 5/23/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *colorRectangle;
- (IBAction)redSider:(id)sender;
- (IBAction)blueSlider:(id)sender;
- (IBAction)greenSlider:(id)sender;
- (IBAction)alphaSlider:(id)sender;
- (void)changeRectangleColor;


@property (strong, nonatomic) IBOutlet UILabel *hexLabel;
@property (strong, nonatomic) IBOutlet UISlider *redSliderOutlet;
@property (strong, nonatomic) IBOutlet UISlider *blueSliderOutlet;
@property (strong, nonatomic) IBOutlet UISlider *greenSliderOutlet;
@property (strong, nonatomic) IBOutlet UISlider *alphaSliderOutlet;
@property (strong, nonatomic) IBOutlet UILabel *redLabel;
@property (strong, nonatomic) IBOutlet UILabel *blueLabel;
@property (strong, nonatomic) IBOutlet UILabel *greenLabel;
@property (strong, nonatomic) IBOutlet UILabel *alphaLabel;


@end

