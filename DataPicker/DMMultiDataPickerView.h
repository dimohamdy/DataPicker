//
//  DMMultiDataPickerView.h
//  DataPicker
//
//  Created by Hamdy on 5/29/14.
//  Copyright (c) 2014 Ahmed Hamdy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DMMultiDataPickerView : UIView<UIPickerViewDelegate>
- (id)initWithWithDictionary:(NSDictionary*)dic;
//#define PICKER_VIEW_LABEL_HEIGHT 30
//#define PICKER_VIEW_LABEL_WIDTH   130
//#define PICKER_VIEW_LABEL_FONT_SIZE  15
//#define PICKER_VIEW_LABEL_FONT_NAME   @"Arial"
//#define PICKER_VIEW_LABEL_COLOR 0x000000
//#define PICKER_VIEW_LABEL_FONT_SMALL 12
//#define PICKER_VIEW_LABEL_NO_OF_LINES 0
//-(UILabel*)setStyleForLable:(UILabel*)lbl{

//#define PICKER_VIEW_BACKGROUND_COLOR 0xf5f5f5
//#define PICKER_VIEW_TINT 0x157DEC

-(void)setStylePickerWithLableFontSize:(int)fontsize andWithLableFontName:(NSString*)fontName andWithLableColor:(UIColor*)lblColor andWithLableNumberOfLines:(int)lines andWithPickerBackGroundColor:(UIColor*)bgColor andWithPickerTintColor:(UIColor*)tint andWithViewHeight:(int)height;

@end
