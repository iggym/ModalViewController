//
//  PresentedViewController.h
//  ModalViewController
//
//  Created by Iggy Mwangi on 7/8/13.
//  Copyright (c) 2013 Iggy Mwangi. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PresentedViewControllerDelegate <NSObject>
- (void)dismissPresentedViewController;
@end


@interface PresentedViewController : UIViewController

@property (nonatomic, weak) id <PresentedViewControllerDelegate> delegate;

- (IBAction)didSelectDone:(UIButton *)sender;

@end
