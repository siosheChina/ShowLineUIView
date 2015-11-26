# ShowLineUIView


@interface UIView (ShowLineUIView)


@property (nonatomic,assign) BOOL showLeftLine;//显示左边的边框
@property (nonatomic,assign) BOOL showTopLine;//显示上边的边框
@property (nonatomic,assign) BOOL showRightLine;//显示右边的边框
@property (nonatomic,assign) BOOL showBottomLine;//显示下边的边框


@property (nonatomic,assign) CGFloat lineWidth;//线宽
@property (nonatomic,strong) UIColor * lineColor;//线颜色


@end



