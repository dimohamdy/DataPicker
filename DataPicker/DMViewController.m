//
//  DMViewController.m
//  DataPicker
//
//  Created by Hamdy on 5/29/14.
//  Copyright (c) 2014 Ahmed Hamdy. All rights reserved.
//

#import "DMViewController.h"
#import "DMDataPickerCell.h"
#import "ApplicationStyle.h"
@interface DMViewController ()

@end

@implementation DMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSDictionary *d = @{
                        @"feild1": @[@"الاول" ,@"الثاني" ,@"1" ,@"الثاني" ,@"الثاني",@"1" ,@"1"],
                        @"feild2": @[@"الاول" ,@"الثاني" ,@"1" ,@"الثاني" ,@"الثاني",@"25" ,@"1"]
                        };
//    NSDictionary *d = @{
//                        @"feild1": @[@"1" ,@"1" ,@"1" ,@"1" ,@"1",@"1" ,@"1"],
//                        @"feild2": @[@"2" ,@"2" ,@"2" ,@"2" ,@"2",@"2" ,@"2"],
//                        @"feild3": @[@"3" ,@"3" ,@"3" ,@"3" ,@"3",@"3" ,@"3"]
//                        };
    

    
    DMDataPickerCell*objDMMultiDataPickerView=[[DMDataPickerCell alloc]initWithWithDictionary:d];
    
    [objDMMultiDataPickerView setStylePickerWithLableFontSize:35 andWithLableFontName:@"Arial" andWithLableColor:UIColorFromRGB(0x111111) andWithLableNumberOfLines:0 andWithPickerBackGroundColor:UIColorFromRGB(0xf5f5f5)andWithPickerTintColor:UIColorFromRGB(0x157DEC)  andWithViewHeight:30 ];
    [self.view addSubview:objDMMultiDataPickerView];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
