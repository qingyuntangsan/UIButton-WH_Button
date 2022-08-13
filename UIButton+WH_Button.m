//
//  UIButton+WH_Button.m
//  ButonnSetImageAndTitle
//
//  Created by 赵卫华 on 2022/8/13.
//

#import "UIButton+WH_Button.h"

@implementation UIButton (WH_Button)

+ (void)load{
    
}
/*
 WHAdjustButtonPosition_ImageLeftTitleRight,
 WHAdjustButtonPosition_ImageRightTitleLeft,
 WHAdjustButtonPosition_ImageTopTitleBottom,
 WHAdjustButtonPosition_ImageBottomTitleTop
 **/
- (void)addButtonWithPosition:(WHAdjustButtonPosition)position BetweenSpace:(CGFloat)betweenSpace{
    if (position == WHAdjustButtonPosition_ImageLeftTitleRight) {
        //button标题的偏移量，这个偏移量是相对于图片的
        self.titleEdgeInsets = UIEdgeInsetsMake(0, betweenSpace/2, 0, 0);
        self.imageEdgeInsets = UIEdgeInsetsMake(0, -betweenSpace/2, 0, 0);
        
    }else if (position == WHAdjustButtonPosition_ImageRightTitleLeft){
        // button标题的偏移量
        self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.bounds.size.width, 0, self.imageView.bounds.size.width);
         // button图片的偏移量
        self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.bounds.size.width + betweenSpace, 0, -self.titleLabel.bounds.size.width);
    }else if (position == WHAdjustButtonPosition_ImageTopTitleBottom){
        // button标题的偏移量
        self.titleEdgeInsets = UIEdgeInsetsMake(self.imageView.frame.size.height+betweenSpace, -self.imageView.bounds.size.width, 0,0);
        // button图片的偏移量
        self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.frame.size.width/2, self.titleLabel.frame.size.height+betweenSpace, -self.titleLabel.frame.size.width/2);
    }else{
        self.titleEdgeInsets = UIEdgeInsetsMake(-self.imageView.frame.size.height-betweenSpace, -self.imageView.bounds.size.width, 0,0);
        // button图片的偏移量
        self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.frame.size.width/2, -self.titleLabel.frame.size.height-betweenSpace, -self.titleLabel.frame.size.width/2);
        
    }
}

@end
