//
//  ViewController.m
//  ConstraintByOrientation
//
//  Created by sungsue on 2015. 2. 4..
//  Copyright (c) 2015년 awesome. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
//    self.view.translatesAutoresizingMaskIntoConstraints = NO;
}


-(void) viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    
    [self.view setNeedsUpdateConstraints];
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    [_upper setNeedsUpdateConstraints];
    [_upper setNeedsLayout];
    
    [_lower setNeedsUpdateConstraints];
    [_lower setNeedsLayout];
}

@end
