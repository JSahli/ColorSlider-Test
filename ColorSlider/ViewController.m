//
//  ViewController.m
//  ColorSlider
//
//  Created by Jesse Sahli on 5/23/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.redLabel.text = [NSString stringWithFormat:@"%.2x",(int)(self.redSliderOutlet.value * 255)];
    self.blueLabel.text = [NSString stringWithFormat:@"%.2x",(int)(self.blueSliderOutlet.value * 255)];
    self.greenLabel.text = [NSString stringWithFormat:@"%.2x",(int)(self.greenSliderOutlet.value * 255)];
    self.alphaLabel.text = [NSString stringWithFormat:@"%.2f%%",(self.alphaSliderOutlet.value * 100)];
    self.hexLabel.text = [NSString stringWithFormat:@"%@%@%@", self.redLabel.text, self.greenLabel.text, self.blueLabel.text];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changeRectangleColor{
    self.colorRectangle.backgroundColor = [UIColor colorWithRed:self.redSliderOutlet.value green:self.greenSliderOutlet.value blue:self.blueSliderOutlet.value alpha:self.alphaSliderOutlet.value];
}


- (IBAction)redSider:(UISlider*)sender {
    [self changeRectangleColor];
    self.redLabel.text = [NSString stringWithFormat:@"%.2x",(int)(sender.value * 255)];
    self.hexLabel.text = [NSString stringWithFormat:@"%@%@%@", self.redLabel.text, self.greenLabel.text, self.blueLabel.text];
}

- (IBAction)blueSlider:(UISlider*)sender {
    [self changeRectangleColor];
    self.blueLabel.text = [NSString stringWithFormat:@"%.2x",(int)(sender.value * 255)];
    self.hexLabel.text = [NSString stringWithFormat:@"%@%@%@", self.redLabel.text, self.greenLabel.text, self.blueLabel.text];
}

- (IBAction)greenSlider:(UISlider*)sender {
    [self changeRectangleColor];
    self.greenLabel.text = [NSString stringWithFormat:@"%.2x",(int)(sender.value * 255)];
    self.hexLabel.text = [NSString stringWithFormat:@"%@%@%@", self.redLabel.text, self.greenLabel.text, self.blueLabel.text];
}

- (IBAction)alphaSlider:(UISlider*)sender {
    [self changeRectangleColor];
    self.alphaLabel.text = [NSString stringWithFormat:@"%.2f%%",(sender.value * 100)];
    self.hexLabel.text = [NSString stringWithFormat:@"%@%@%@", self.redLabel.text, self.greenLabel.text, self.blueLabel.text];
}
@end
