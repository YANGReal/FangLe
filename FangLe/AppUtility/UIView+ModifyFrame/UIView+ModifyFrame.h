/* 

Before:  
    CGRect frame = myView.frame;
    frame.origin.x = newX;
    myView.frame = frame;

After:  
    myView.x = newX;
 
*/

#import <UIKit/UIKit.h>

@interface UIView (Ext)

@property CGFloat x;
@property CGFloat y;
@property CGFloat width;
@property CGFloat height;
@property (readonly) CGFloat right;
@property (readonly)CGFloat bottom;

@end
