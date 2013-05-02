//
//  DropBoxViewController.m
//  table4
//
//  Created by J Berber on 01/05/13.
//  Copyright (c) 2013 Canilu. All rights reserved.
//

#import "DropBoxViewController.h"
#import "ViewController.h"

@interface DropBoxViewController ()

@end

@implementation DropBoxViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)dropboxBut:(id)sender {
    if (![[DBSession sharedSession] isLinked]) {
        [[DBSession sharedSession] linkFromController:self];
    } else {
        [[DBSession sharedSession] unlinkAll];
    }
}
@end
