//
//  DMMultiDataPickerView.h
//  DataPicker
//
//  Created by Hamdy on 5/29/14.
//  Copyright (c) 2014 Ahmed Hamdy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DMMultiDataPickerView : UIView<UIPickerViewDelegate>
- (id)initWithNumberOfPicker:(int)numb andWithDictionary:(NSDictionary*)dic;

@end
