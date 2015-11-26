# ShowLineUIView


@interface UIView (ShowLineUIView)


一个属性来决定要不要显示边框。。可以改变边框的颜色宽度。可以单独设置任意一个属性。



@property (nonatomic,assign) BOOL showLeftLine;//显示左边的边框

@property (nonatomic,assign) BOOL showTopLine;//显示上边的边框

@property (nonatomic,assign) BOOL showRightLine;//显示右边的边框

@property (nonatomic,assign) BOOL showBottomLine;//显示下边的边框


@property (nonatomic,assign) CGFloat lineWidth;//线宽

@property (nonatomic,strong) UIColor * lineColor;//线颜色





