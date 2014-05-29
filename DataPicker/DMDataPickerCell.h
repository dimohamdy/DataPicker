//
//  DMMultiDataPickerView.h
//  DataPicker
//
//  Created by Hamdy on 5/29/14.
//  Copyright (c) 2014 Ahmed Hamdy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DMDataPickerCell : UITableViewCell<UIPickerViewDelegate>
- (id)initWithWithDictionary:(NSDictionary*)dic;


-(void)setStylePickerWithLableFontSize:(int)fontsize andWithLableFontName:(NSString*)fontName andWithLableColor:(UIColor*)lblColor andWithLableNumberOfLines:(int)lines andWithPickerBackGroundColor:(UIColor*)bgColor andWithPickerTintColor:(UIColor*)tint andWithViewHeight:(int)height;

@end
