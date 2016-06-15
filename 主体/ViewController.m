//
//  ViewController.m
//  主体
//
//  Created by David on 16/6/15.
//  Copyright © 2016年 WM. All rights reserved.
//

#import "ViewController.h"
#import "LEETheme.h"
#import "ViewController2.h"
#define RED @"red"

#define BLUE @"blue"

#define GRAY @"gray"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.lee_theme
    .LeeAddBackgroundColor(RED , [UIColor redColor])
    .LeeAddBackgroundColor(BLUE , [UIColor blueColor])
    .LeeAddBackgroundColor(GRAY , [UIColor grayColor])
    .LeeChangeThemeAnimationDuration(1.0f);
    
}
- (IBAction)swithRedTheme:(id)sender {
    //启用主题
    
    [LEETheme startTheme:RED];
}
- (IBAction)swithBlueTheme:(id)sender {
    //启用主题
    
    [LEETheme startTheme:BLUE];
}
- (IBAction)swithDarkTheme:(id)sender {
    //启用主题
    
    [LEETheme startTheme:GRAY];
}
- (IBAction)swithGreenTheme:(id)sender {
    ViewController2 *vc = [[ViewController2 alloc] init];
    [self presentViewController:vc animated:YES completion:^{
        vc.view.lee_theme
        .LeeAddBackgroundColor(RED , [UIColor redColor])
        .LeeAddBackgroundColor(BLUE , [UIColor blueColor])
        .LeeAddBackgroundColor(GRAY , [UIColor grayColor])
        .LeeChangeThemeAnimationDuration(1.0f);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
