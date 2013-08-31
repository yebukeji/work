//
//  RootViewController.m
//  TestAnimation
//
//  Created by songyanming on 13-8-26.
//  Copyright (c) 2013年 songyanming. All rights reserved.
//

#import "RootViewController.h"
#import "TestView.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    TestView *testV = [[TestView alloc]initWithFrame:self.view.bounds];
    testV.backgroundColor = [UIColor whiteColor];
    self.view = testV;
    [testV release];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
