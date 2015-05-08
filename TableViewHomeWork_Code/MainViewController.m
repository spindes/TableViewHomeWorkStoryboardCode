//
//  MainViewController.m
//  TableViewHomeWork_Code
//
//  Created by Aleksandra Borovytskaya on 5/8/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import "MainViewController.h"
#import "ColorViewController.h"

@interface MainViewController ()

@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) NSArray *data;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor= [UIColor whiteColor];
    CGRect frame = self.view.bounds;
    CGFloat delta = [UIApplication sharedApplication].statusBarFrame.size.height;
    frame.origin.y+=delta;
    frame.size.height-= delta;

    self.tableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];
     self.tableView.autoresizingMask =
         UIViewAutoresizingFlexibleLeftMargin |
         UIViewAutoresizingFlexibleWidth |
         UIViewAutoresizingFlexibleRightMargin |
         UIViewAutoresizingFlexibleTopMargin |
         UIViewAutoresizingFlexibleHeight |
         UIViewAutoresizingFlexibleBottomMargin;

    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    

    self.data=@[@"Red",@"Orange",@"Yellow",@"Green",@"Blue",@"Indigo",@"Violet"];
    self.colors=@[
            [UIColor colorWithRed:1 green:0 blue:0 alpha:1],
            [UIColor colorWithRed:1 green:0.4 blue:0 alpha:1],
            [UIColor colorWithRed:1 green:1 blue:0 alpha:1],
            [UIColor colorWithRed:0 green:1 blue:0 alpha:1],
            [UIColor colorWithRed:0 green:0 blue:255 alpha:1],
            [UIColor colorWithRed:0.29 green:0 blue:0.51 alpha:1],
            [UIColor colorWithRed:0.6 green:0 blue:1 alpha:1]
            ] ;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Indetifier"];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"Indetifier" forIndexPath:indexPath];
    cell.textLabel.text = self.data [(NSUInteger)indexPath.row];
    cell.backgroundColor = self.colors[(NSUInteger)indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    ColorViewController *colorViewController = [[ColorViewController alloc] init];
    UIColor *selectedColor=self.colors [(NSUInteger)indexPath.row];
    colorViewController.color = selectedColor;

    [self presentViewController:colorViewController animated:YES completion:nil];

}


@end
