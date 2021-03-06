//
//  PresentingViewController.m
//  ModalViewController
//
//  Created by Iggy Mwangi on 7/8/13.
//  Copyright (c) 2013 Iggy Mwangi. All rights reserved.
//

#import "PresentingViewController.h"

@interface PresentingViewController ()

@end

@implementation PresentingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dismissPresentedViewController
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    PresentedViewController *viewController = segue.destinationViewController;
    viewController.delegate = self;
    
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

@end
