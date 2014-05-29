//
//  DMViewController.m
//  DataPicker
//
//  Created by Hamdy on 5/29/14.
//  Copyright (c) 2014 Ahmed Hamdy. All rights reserved.
//

#import "DMViewController.h"
#import "DMMultiDataPickerView.h"
@interface DMViewController ()

@end

@implementation DMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    NSDictionary *d = @{
//                        @"feild1": @[@"الاول" ,@"الثاني" ,@"1" ,@"الثاني" ,@"الثاني",@"1" ,@"1"],
//                        @"feild2": @[@"الاول" ,@"الثاني" ,@"1" ,@"الثاني" ,@"الثاني",@"25" ,@"1"]
//                        };
    NSDictionary *d = @{
                        @"feild1": @[@"1" ,@"1" ,@"1" ,@"1" ,@"1",@"1" ,@"1"],
                        @"feild2": @[@"2" ,@"2" ,@"2" ,@"2" ,@"2",@"2" ,@"2"],
                        @"feild3": @[@"3" ,@"3" ,@"3" ,@"3" ,@"3",@"3" ,@"3"]
                        };
    DMMultiDataPickerView*objDMMultiDataPickerView=[[DMMultiDataPickerView alloc]initWithWithDictionary:d];
    [self.view addSubview:objDMMultiDataPickerView];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
