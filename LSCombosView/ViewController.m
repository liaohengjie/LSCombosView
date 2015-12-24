//
//  ViewController.m
//  LSCombosView
//
//  Created by  tsou117 on 15/12/23.
//  Copyright (c) 2015年 sen. All rights reserved.
//

#import "ViewController.h"
#import "FXBlurView.h"

@interface ViewController ()
<UIScrollViewDelegate>
@end

@implementation ViewController
{
    UIScrollView* rootview;
    CGFloat subviews_h;
    
    //
    CGFloat screen_width;
    CGFloat screen_height;
    
    //
    UIImageView* headerimgview;
    CGRect headerv_firstrect;
    
    FXBlurView* contentview;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //
    screen_width = [UIScreen mainScreen].bounds.size.width;
    screen_height = [UIScreen mainScreen].bounds.size.height;
    
    //
    self.view.backgroundColor = [UIColor colorWithRed:0.157 green:0.169 blue:0.208 alpha:1];
    
    //
    UIImageView* buttomimgv = [[UIImageView alloc] initWithFrame:CGRectMake(0, screen_height-200, screen_width, 200)];
    buttomimgv.image = [UIImage imageNamed:@"psds27713.png"];
    [self.view addSubview:buttomimgv];
    
    //
    UILabel* christmaslb = [[UILabel alloc] initWithFrame:CGRectMake(0, screen_height-44, screen_width, 44)];
    christmaslb.text = @"- Merry Christmas -";
    christmaslb.textAlignment = 1;
    christmaslb.textColor = [UIColor lightGrayColor];
    christmaslb.font = [UIFont boldSystemFontOfSize:12];
    [self.view addSubview:christmaslb];
    

    //
    rootview = [[UIScrollView alloc] initWithFrame:CGRectZero];
    rootview.delegate = self;
    [self.view addSubview:rootview];
    
    //
    [self addHeaderImageView];
    [self addContentView];
    
}
- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    rootview.frame = self.view.bounds;
}


#pragma mark - 记录相对位置
- (void)addSubview:(UIView*)view{
    //
    [rootview addSubview:view];
    subviews_h += view.bounds.size.height;
    rootview.contentSize = CGSizeMake(rootview.bounds.size.width, subviews_h);
}

#pragma mark - 添加子视图
- (void)addHeaderImageView{
    //
    headerv_firstrect = CGRectMake(0, subviews_h, screen_width, screen_width*0.5);
    headerimgview = [[UIImageView alloc] initWithFrame:headerv_firstrect];
    headerimgview.userInteractionEnabled = YES;
    headerimgview.contentMode = UIViewContentModeScaleAspectFill;
    headerimgview.image = [UIImage imageNamed:@"Eason.jpg"];
    [self addSubview:headerimgview];
    
    UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(actionOfTest)];
    [headerimgview addGestureRecognizer:tap];
}

- (void)actionOfTest{
    //
    UIAlertView* alv = [[UIAlertView alloc] initWithTitle:@"" message:@"test" delegate:nil cancelButtonTitle:@"Done" otherButtonTitles: nil];
    [alv show];
}

- (void)addContentView{
    //
    contentview = [[FXBlurView alloc] initWithFrame:CGRectMake(0, subviews_h, screen_width, 0)];
    contentview.tintColor = [UIColor clearColor];
    contentview.backgroundColor = [UIColor colorWithRed:0.157 green:0.169 blue:0.208 alpha:1];
    
    
    UILabel* textlb = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, contentview.bounds.size.width-40, 0)];
    
//    textlb.text = @"我来到 你的城市\n走过你来时的路\n想像着 没我的日子\n你是怎样的孤独\n\n拿着你 给的照片\n熟悉的那一条街\n只是没了你的画面\n我们回不到那天\n\n你会不会忽然的出现\n在街角的咖啡店\n我会带着笑脸 挥手寒暄\n和你 坐着聊聊天\n我多么想和你见一面\n看看你最近改变\n不再去说从前 只是寒暄\n对你说一句 只是说一句\n好久不见\n\n拿着你 给的照片\n熟悉的那一条街\n只是没了你的画面\n我们回不到那天\n\n你会不会忽然的出现\n在街角的咖啡店\n我会带着笑脸 挥手寒暄\n和你 坐着聊聊天\n我多么想和你见一面\n看看你最近改变\n不再去说从前 只是寒暄\n对你说一句 只是说一句\n好久不见";
    
    textlb.text = @"我住的城市从不下雪\n记忆却堆满冷的感觉\n思念到忘记\n霓虹扫过喧哗的街\n把快乐赶得好远\n落单的恋人最怕过节\n只能独自庆祝尽量喝醉\n我爱过的人没有一个留在身边\n寂寞他陪我过夜\nMerry Merry Christmas，Lonely Lonely Christmas\n想祝福不知该给谁\n爱被我们打了死结\nLonely Lonely Christmas，Merry Merry christmas\n写了卡片能寄给谁\n心碎的像街上的纸屑\n落单的恋人最怕过节\n只能独自庆祝尽量喝醉\n我爱过的人没有一个留在身边\n寂寞他陪我过夜\nMerry Merry Christmas，Lonely Lonely Christmas\n想祝福不知该给谁\n爱被我们打了死结\nLonely Lonely Christmas，Merry Merry christmas\n写了卡片能寄给谁\n心碎的像街上的纸屑\n电话不接不要被人发现我整夜都关在房间\n狂欢的笑声听来象哀悼的音乐\n眼眶的泪 温热冻结\n望着电视里的无聊节目\n躺在沙发上变成没知觉的植物\nMerry Merry Christmas，Lonely Lonely Christmas\n想祝福不知该给谁\n爱被我们打了死结\nLonely Lonely Christmas，Merry Merry christmas\n写了卡片能寄给谁\n心碎的象街上的纸屑\nMerry Merry Christmas，Lonely Lonely Christmas\n想祝福不知该给谁\n爱被我们打了死结\nLonely Lonely Christmas，Merry Merry christmas\n写了卡片能寄给谁\n心碎的象街上的纸屑\n谁来陪我过这圣诞节";
    
    textlb.textColor = [UIColor lightGrayColor];
    textlb.font = [UIFont boldSystemFontOfSize:12];
    textlb.numberOfLines = 0;
    [contentview addSubview:textlb];
    [textlb sizeToFit];
    
    contentview.frame = CGRectMake(0, subviews_h, screen_width, textlb.frame.origin.y+textlb.frame.size.height+80);
    [self addSubview:contentview];
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    //
    CGFloat ff = scrollView.contentOffset.y;
    
    CGRect rect = headerimgview.frame;
    rect.origin.y = ff;
    rect.size.height = headerv_firstrect.size.height-ff;
    headerimgview.frame = rect;
    
    if (ff > 0) {
        //
        CGFloat tmpf = scrollView.contentOffset.y/scrollView.bounds.size.height;
        CGFloat a = 1.34-tmpf;
        contentview.backgroundColor = [UIColor colorWithRed:0.157 green:0.169 blue:0.208 alpha:a];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
