//
//  UIButton+WH_Button.h
//  ButonnSetImageAndTitle
//
//  Created by 赵卫华 on 2022/8/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, WHAdjustButtonPosition) {
    WHAdjustButtonPosition_ImageLeftTitleRight,
    WHAdjustButtonPosition_ImageRightTitleLeft,
    WHAdjustButtonPosition_ImageTopTitleBottom,
    WHAdjustButtonPosition_ImageBottomTitleTop
};
@interface UIButton (WH_Button)
- (void)addButtonWithPosition:(WHAdjustButtonPosition)position BetweenSpace:(CGFloat)betweenSpace;
@end

NS_ASSUME_NONNULL_END
