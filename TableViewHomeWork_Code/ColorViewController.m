//
//  ColorViewController.m
//  TableViewHomeWork_Code
//
//  Created by Aleksandra Borovytskaya on 5/8/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()

@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = self.color;

    UIGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapOnView:)];
    [self.view addGestureRecognizer:gestureRecognizer];
}

- (void)didTapOnView:(id)didTapOnView {

    [self dismissViewControllerAnimated:YES completion:nil];
}





@end
