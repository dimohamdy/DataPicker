//
//  ApplicationStyle.h
//  EduWaveProject
//
//  Created by Sally Abdallah on 1/13/14.
//  Copyright (c) 2014 Sally. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ApplicationStyle : NSObject


//login //

#define PICKER_VIEW_LABEL_HEIGHT 30
#define PICKER_VIEW_LABEL_WIDTH   130
#define PICKER_VIEW_LABEL_FONT_SIZE  35
#define PICKER_VIEW_LABEL_FONT_NAME   @"Arial"
#define PICKER_VIEW_LABEL_COLOR 0x000000
#define PICKER_VIEW_LABEL_FONT_SMALL 12
#define PICKER_VIEW_LABEL_NO_OF_LINES 0

#define PICKER_VIEW_BACKGROUND_COLOR 0xf5f5f5
#define PICKER_VIEW_TINT 0x157DEC

//////////////////

#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@end
