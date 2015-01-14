//
//  Global.h
//  iCareer
//
//  Created by YANGRui on 14-2-27.



//  Copyright (c) 2014年 YANGRui. All rights reserved.



#ifndef iCareer_Global_h
#define iCareer_Global_h

#pragma mark --导入头文件

#import "AppUtility.h"
#import "AFNetworking.h"
#import "UIKit+AFNetworking.h"
#import "NSDictionary+JSON.h"
#import "UIColor+HexString.h"
#import "FLMainViewController.h"
#import "UIImage+Loader.h"
#import "UIView+Border.h"

#import "UIView+ModifyFrame.h"
#import "NBNetworkEngine.h"
#import "MJRefresh.h"
#import "MMLocationManager.h"
#import "DXAlertView.h"
#import "ETActivityIndicatorView.h"

#import "FLBaseViewController.h"

#import "YRSegmentControl.h"
#import "DropDownListView.h"
#import "JSONKit.h"
#import "BlockUI.h"
#import "YRZoomingView.h"
#import "SwipeView.h"
#import "NBCallAlbumOrCamera.h"

#pragma mark --定义常用宏

#define kUMKey @"54263bf7fd98c5005b007c4d"
#define IS_FIRST_USE @"is_first_use"
#define REMEMBER_PASS_WORD @"remember_password"
#define USER_NAME_KEY @"username"
#define PASS_WORD_KEY @"password"
#define UID @"uid"
#define RESULT_CODE @"resultCode"
#define RESULT_MSG @"resultMessage"
#define DID_LOGIN @"login"

#define ACCOUNT [AppUtility getObjectForKey:USER_NAME_KEY]
#define PASSWORD [AppUtility getObjectForKey:PASS_WORD_KEY]

#define IntToString(num)   [NSString stringWithFormat:@"%d",num]
#define FloatToString(num) [NSString stringWithFormat:@"%f",num]
#define PhotoURL(urlString) [NSURL URLWithString:urlString]
/*********************
 几何尺寸
 *********************/
#define ISIP5 ([UIScreen mainScreen].bounds.size.height >= 568 ? YES : NO)
#define IP5ORIP4FRAME [UIScreen mainScreen].bounds.size.height == 568 ? CGRectMake(0.0, 0.0, 320.0, 568.0) : CGRectMake(0.0, 0.0, 320.0, 480.0)
#define RECT(x,y,w,h) CGRectMake(x,y,w,h)
#define POINT(x,y) CGPointMake(x,y)
#define SIZE(w,h) CGSizeMake(w,h)
#define DEVICE_HEIGHT [UIScreen mainScreen].bounds.size.height
#define DEVICE_WIDTH [UIScreen mainScreen].bounds.size.width
#define NUMBER_TO_STRING(number) [NSString stringWithFormat:@"%d",number];
#define ANIMATION_DURATION 0.3
#define NAV_HEIGHT 64
#define StringToURL(string) [NSURL URLWithString:string]

/*********************
 常用颜色
 *********************/
#define WHITE_COLOR   [UIColor whiteColor]                    //白色
#define BLACK_COLOR   [UIColor blackColor]                    //黑色
#define CLEAR_COLOR   [UIColor clearColor]                    //透明色


#define LIGHT_GRAY            [UIColor colorWithHexString:@"#c3c3c3"] //浅灰色
#define GRAY_COLOR            [UIColor colorWithHexString:@"#828282"] //灰色
#define DEEP_GRAY            [UIColor colorWithHexString:@"#565656"] //深灰色
#define GREEN_COLOR            [UIColor colorWithHexString:@"#6bb600"] //绿色
#define DEEP_GREEN            [UIColor colorWithHexString:@"#5c9d00"] //深绿色
#define LIGHT_GREEN            [UIColor colorWithHexString:@"#bcdb9f"] //浅绿色

#define NAVBAR_COLOR  [UIColor colorWithHexString:@"#f39800"]//导航栏颜色

#define BLUE_COLOR    [UIColor colorWithHexString:@"#00b7ee"] //浅紫色
#define YELLOW_COLOR  [UIColor colorWithHexString:@"#feaa24"] //明黄色
#define RED_COLOR     [UIColor colorWithHexString:@"#fd7575"] //粉红色
#define BG_COLOR      [UIColor colorWithHexString:@"#E8E8E8"] //灰色背景色

//定义字体大小
#define F1   [UIFont systemFontOfSize:9]
#define F2   [UIFont systemFontOfSize:10]
#define F3   [UIFont systemFontOfSize:12]
#define F4   [UIFont systemFontOfSize:14]
#define F5   [UIFont systemFontOfSize:17]
#define F6   [UIFont systemFontOfSize:24]



#pragma mark -- 定义APP沙盒路径
/******************************
 定义APP沙盒路径
 ******************************/
#define DOCUMENTPATH [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define TMPPATH NSTemporaryDirectory()
#define CACHPATH [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0]
#define CACH_DOCUMENTS_PATH(fileName) [CACHPATH stringByAppendingPathComponent:fileName]//缓存文件路径
#define DOCUMENTS_PATH(fileName) [DOCUMENTPATH stringByAppendingPathComponent:fileName]//Documents文件夹路径

#pragma mark --定义颜色
/******************************
 定义RGB颜色
 ******************************/
#define RGBColor(r,g,b,a)  [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a*1.0]


#pragma mark --定义日志输出
/******************************
 定义日志输出模式
 DLog is almost a drop-in replacement for NSLog
 DLog();
 DLog(@"here");
 DLog(@"value: %d", x);
 Unfortunately this doesn't work DLog(aStringVariable); you have to do this instead DLog(@"%@", aStringVariable);
 ******************************/
#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#   define ELog(err) {if(err) DLog(@"%@", err)}
#else
#   define DLog(...)
#endif

// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);


#endif
