//
//  DMMultiDataPickerView.m
//  DataPicker
//
//  Created by Hamdy on 5/29/14.
//  Copyright (c) 2014 Ahmed Hamdy. All rights reserved.
//

#import "DMDataPickerCell.h"
#import "ApplicationStyle.h"
@implementation DMDataPickerCell{
    int count;
    NSDictionary *dictionary;
    NSMutableArray*pickers;
    UILabel*sharedLabel;
    
    int ftsize;
    NSString*ftName;
    UIColor *lblClr;
    int lnes;
    
    UIColor *bgClr;
    UIColor *tintClr;
    int high;
    
}
- (id)initWithWithDictionary:(NSDictionary*)dic
{

    
    self = [super init];
    
    
    
    dictionary=[NSDictionary dictionaryWithDictionary:dic];
    pickers=[[NSMutableArray alloc]init];
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
            //setstyle for picker
            datePicker=[self setStyleForPicker:datePicker];
            [self addSubview:datePicker];
            [datePicker setDelegate:self];
            [pickers addObject:datePicker];
        }
        
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSArray* nibViews = [[NSBundle mainBundle] loadNibNamed:@"DMDataPickerCell"
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

    NSString*key=[[dictionary allKeys] objectAtIndex:pickerView.tag];
    NSArray*arrOfFeild=[dictionary objectForKey:key];
    
    
    return [arrOfFeild count];
}

//- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
//    //you can also write code here to descide what data to return depending on the component ("column")
//NSString*key=[[dictionary allKeys] objectAtIndex:pickerView.tag];
//NSArray*arrOfFeild=[dictionary objectForKey:key];
//    
//    NSString*value=[arrOfFeild objectAtIndex:row];
//    return value;//or nil, depending how protective you are
//}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{

    NSMutableArray* objects=[[NSMutableArray alloc]init];
    for (UIPickerView*pick in pickers) {
        NSString*key=[[dictionary allKeys] objectAtIndex:pick.tag];
        NSArray*arrOfFeild=[dictionary objectForKey:key];
       row = [pick selectedRowInComponent:0];
        [objects addObject:[arrOfFeild objectAtIndex:row]];
    }
    NSDictionary*dic=[NSDictionary dictionaryWithObjects:objects forKeys:[dictionary allKeys]];
    NSLog(@"%@",dic);

}
-(UIPickerView*)setStyleForPicker:(UIPickerView*)pick{
    pick.backgroundColor=bgClr;
    pick.tintColor=tintClr;
    return pick;
    
}
-(UILabel*)setStyleForLable:(UILabel*)lbl{
    
    [lbl setFont:[UIFont fontWithName:ftName size:ftsize]];
    [lbl setTextColor:lblClr];
    [lbl setNumberOfLines:lnes];
    return lbl;

}
-(void)setStylePickerWithLableFontSize:(int)fontsize andWithLableFontName:(NSString*)fontName andWithLableColor:(UIColor*)lblColor andWithLableNumberOfLines:(int)lines andWithPickerBackGroundColor:(UIColor*)bgColor andWithPickerTintColor:(UIColor*)tint  andWithViewHeight:(int)height{
     ftsize=fontsize;
     ftName=fontName;
     lblClr=lblColor;
     lnes=lines;
     bgClr=bgColor;
     tintClr=tint;
     high=height;
    
}
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UILabel* tView = (UILabel*)view;
    if (!tView){
        tView = [[UILabel alloc] init];
        // Setup label properties - frame, font, colors etc
        tView.textAlignment = NSTextAlignmentCenter;

      tView=  [self setStyleForLable:tView];
    
    }
    // Fill the label text here
    NSString*key=[[dictionary allKeys] objectAtIndex:pickerView.tag];
    NSArray*arrOfFeild=[dictionary objectForKey:key];
    
    NSString*value=[arrOfFeild objectAtIndex:row];
     tView.text=value;
    return tView;
}
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return high;
}


@end
