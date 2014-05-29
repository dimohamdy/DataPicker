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
- (id)initWithWithDictionary:(NSDictionary*)dic
{
    self = [super init];
    dictionary=[NSDictionary dictionaryWithDictionary:dic];

    if (self) {

        // Initialization code
        NSLog(@"%f",self.frame.size.width);
        #define padding 10
       int numb=[dictionary count];
   float dataPickerWidth= (self.frame.size.width)/numb;
        NSLog(@"%f",dataPickerWidth);

   float dataPickerHeight= self.frame.size.height;


        for ( count=0; count<numb; count++) {
            //generate number of dataPickers
            UIPickerView *datePicker = [[UIPickerView alloc] initWithFrame:CGRectMake((count*dataPickerWidth), 0, dataPickerWidth, dataPickerHeight)] ;
            datePicker.tag = count;
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
- (void)changeDate:(UIDatePicker *)sender {
    NSLog(@"New Date: %@", sender.date);
}

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
NSString*key=[[dictionary allKeys] objectAtIndex:pickerView.tag];
NSArray*arrOfFeild=[dictionary objectForKey:key];
    
    NSString*value=[arrOfFeild objectAtIndex:row];
    return value;//or nil, depending how protective you are
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSString*key=[[dictionary allKeys] objectAtIndex:pickerView.tag];
    NSArray*arrOfFeild=[dictionary objectForKey:key];
    
    NSString*value=[arrOfFeild objectAtIndex:row];
    NSLog(@"%@",value);

}

@end
