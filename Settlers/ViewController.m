//
//  ViewController.m
//  Settlers
//
//  Created by Lucas Chwe on 3/8/14.
//  Copyright (c) 2014 Lucas Chwe. All rights reserved.
//

#import "ViewController.h"
#import <OBShapedButton.h>
#import "HexView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet OBShapedButton *hexButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    self.hexButton
    HexView *hexView = [[HexView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    hexView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:hexView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
