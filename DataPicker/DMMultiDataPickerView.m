//
//  DMMultiDataPickerView.m
//  DataPicker
//
//  Created by Hamdy on 5/29/14.
//  Copyright (c) 2014 Ahmed Hamdy. All rights reserved.
//

#import "DMMultiDataPickerView.h"

@implementation DMMultiDataPickerView{
    int count;
    NSDictionary *dictionary;
}
- (id)initWithNumberOfPicker:(int)numb andWithDictionary:(NSDictionary*)dic
{
    self = [super init];
    dictionary=[NSDictionary dictionaryWithDictionary:dic];

    if (self) {

        // Initialization code
        NSLog(@"%f",self.frame.size.width);
        #define padding 10
   float dataPickerWidth= (self.frame.size.width)/numb-(numb*padding);
   float dataPickerHeight= self.frame.size.height;


        for ( count=0; count<numb; count++) {
            //generate number of dataPickers
            UIPickerView *datePicker = [[UIPickerView alloc] initWithFrame:CGRectMake(count*dataPickerWidth+padding, 0, dataPickerWidth, dataPickerHeight)] ;
            datePicker.tag = count;
            //[datePicker addTarget:self action:@selector(changeDate:) forControlEvents:UIControlEventValueChanged];
            [self addSubview:datePicker];
            [datePicker setDelegate:self];
        }
        
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSArray* nibViews = [[NSBundle mainBundle] loadNibNamed:@"DMMultiDataPickerView"
                                                          owner:self
                                                        options:nil];
        self = [ nibViews objectAtIndex: 0];

        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
//- (void)changeDate:(UIDatePicker *)sender {
//    NSLog(@"New Date: %@", sender.date);
//}
//
//- (void)removeViews:(id)object {
//    [[self.view viewWithTag:9] removeFromSuperview];
//    [[self.view viewWithTag:10] removeFromSuperview];
//    [[self.view viewWithTag:11] removeFromSuperview];
//}
//
//- (void)dismissDatePicker:(id)sender {
//    CGRect toolbarTargetFrame = CGRectMake(0, self.view.bounds.size.height, 320, 44);
//    CGRect datePickerTargetFrame = CGRectMake(0, self.view.bounds.size.height+44, 320, 216);
//    [UIView beginAnimations:@"MoveOut" context:nil];
//    [self.view viewWithTag:9].alpha = 0;
//    [self.view viewWithTag:10].frame = datePickerTargetFrame;
//    [self.view viewWithTag:11].frame = toolbarTargetFrame;
//    [UIView setAnimationDelegate:self];
//    [UIView setAnimationDidStopSelector:@selector(removeViews:)];
//    [UIView commitAnimations];
//}
//
//- (IBAction)callDP:(id)sender {
//    if ([self.view viewWithTag:9]) {
//        return;
//    }
//    CGRect toolbarTargetFrame = CGRectMake(0, self.view.bounds.size.height-216-44, 320, 44);
//    CGRect datePickerTargetFrame = CGRectMake(0, self.view.bounds.size.height-216, 320, 216);
//    
//    UIView *darkView = [[[UIView alloc] initWithFrame:self.view.bounds] autorelease];
//    darkView.alpha = 0;
//    darkView.backgroundColor = [UIColor blackColor];
//    darkView.tag = 9;
//    UITapGestureRecognizer *tapGesture = [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissDatePicker:)] autorelease];
//    [darkView addGestureRecognizer:tapGesture];
//    [self.view addSubview:darkView];
//    
//    UIDatePicker *datePicker = [[[UIDatePicker alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height+44, 320, 216)] autorelease];
//    datePicker.tag = 10;
//    [datePicker addTarget:self action:@selector(changeDate:) forControlEvents:UIControlEventValueChanged];
//    [self.view addSubview:datePicker];
//    
//    UIToolbar *toolBar = [[[UIToolbar alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height, 320, 44)] autorelease];
//    toolBar.tag = 11;
//    toolBar.barStyle = UIBarStyleBlackTranslucent;
//    UIBarButtonItem *spacer = [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil] autorelease];
//    UIBarButtonItem *doneButton = [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(dismissDatePicker:)] autorelease];
//    [toolBar setItems:[NSArray arrayWithObjects:spacer, doneButton, nil]];
//    [self.view addSubview:toolBar];
//    
//    [UIView beginAnimations:@"MoveIn" context:nil];
//    toolBar.frame = toolbarTargetFrame;
//    datePicker.frame = datePickerTargetFrame;
//    darkView.alpha = 0.5;
//    [UIView commitAnimations];
//}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;// or the number of vertical "columns" the picker will show...
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
//    if (myLoadedArray!=nil) {
//        return [myLoadedArray count];//this will tell the picker how many rows it has - in this case, the size of your loaded array...
//    }

    NSString*key=[[dictionary allKeys] objectAtIndex:pickerView.tag];
    NSArray*arrOfFeild=[dictionary objectForKey:key];
    
    
    return [arrOfFeild count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    //you can also write code here to descide what data to return depending on the component ("column")
    NSLog(@"%d",component);
NSString*key=[[dictionary allKeys] objectAtIndex:pickerView.tag];
NSArray*arrOfFeild=[dictionary objectForKey:key];
    
    NSString*value=[arrOfFeild objectAtIndex:row];
    return value;//or nil, depending how protective you are
}
@end
