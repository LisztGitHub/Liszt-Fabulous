# Liszt-Fabulous
模仿QQ点赞动画
#
<img src="https://github.com/LisztGitHub/Liszt-Fabulous/blob/master/Liszt.gif" />

    #import <UIKit/UIKit.h>

    @interface UIView (Zam)
    /**
     * 添加点赞动画
     * @param view 来自哪一个视图
     */
    - (void)addAnimationFromView:(UIView *)view startPoint:(CGPoint)startPoint endY:(CGFloat)y duration:(CGFloat)duration;
    @end
