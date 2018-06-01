//
//  ZXViewController.m
//  ZXMarsKit
//
//  Created by Chineseroyalstar on 01/26/2018.
//  Copyright (c) 2018 Chineseroyalstar. All rights reserved.
//

#import "ZXViewController.h"
#import "ZXAccessoryButton.h"

@interface ZXViewController ()

@end

@implementation ZXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
   
    ZXAccessoryButton *button = [[ZXAccessoryButton alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    button.backgroundColor = [UIColor redColor];
    button.leftImageView.backgroundColor = [UIColor greenColor];
    [button.rightButton setTitle:@"123" forState:UIControlStateNormal];
    [button.rightButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    button.rightButton.backgroundColor = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
