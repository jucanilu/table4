//
//  ViewController.m
//  table4
//
//  Created by J Berber on 01/05/13.
//  Copyright (c) 2013 Canilu. All rights reserved.
//

#import "ViewController.h"
#import "DropBoxViewController.h"
#import "DropBoxViewController.h"   


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTableTips:nil];
    [super viewDidUnload];
}
@end
