//
//  MainViewController.h
//  TableViewHomeWork_Code
//
//  Created by Aleksandra Borovytskaya on 5/8/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>


@property(nonatomic, strong) NSArray *colors;
@end

