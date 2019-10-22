//
//  ViewController.m
//  RTF
//
//  Created by 蒲悦蓉 on 2019/10/15.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
/*上偏不偏*/
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 275, 600)];
    label.numberOfLines = 0;
   // label.frame = CGr
    NSString *text = @"字体测试：30号，这是25号\n颜色测试：这是红色，这是绿色\n背景色设置：这是红色背景，这是绿色背景\n连字符测试：这个fl有连字符，这个fl没有连字符\n字符间距测试：这个字符间距为20，这个字符间距为1\n下划线测试：这几个字有下划线\n删除线测试：这几个字有删除线\n描边测试：这几个字描边\n文字阴影测试：这几个字有阴影\n文字效果测试：这几个字添加了效果\n字体偏移量测试：这几个字上偏，不偏，下偏\n字体倾斜测试：左倾斜，右倾斜\n文字扁平化测试：这几个字拉伸，这几个字压缩\n";
    NSMutableAttributedString *testAttributedString = [[NSMutableAttributedString alloc] initWithString:text];
    
//    for (int i = 0; i < [text length]; i++) {
//        char c = [text characterAtIndex:i];
//        NSLog(@"%d: %c", i, c);
//    }
    /* ===================== 字体属性 ========================== */
    [testAttributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:30] range:NSMakeRange(5, 8)];
    [testAttributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:10] range:NSMakeRange(9,6)];
    
    
    /* ===================== 颜色属性 ==========================*/
    [testAttributedString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(20, 24)];
    [testAttributedString addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(25, 29)];
    [testAttributedString addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange(29, 32)];
    [testAttributedString addAttribute:NSForegroundColorAttributeName value:[UIColor clearColor] range:NSMakeRange(115,115)];
    
    /* ===================== 背景颜色属性 ========================*/
    [testAttributedString addAttribute:NSBackgroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(36, 41)];
    [testAttributedString addAttribute:NSBackgroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(43, 49)];
    [testAttributedString addAttribute:NSBackgroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(50, 52)];
    
    /* ===================== 连字符属性 ========================*/
    [testAttributedString addAttribute:NSLigatureAttributeName value:[NSNumber numberWithInt:0] range:NSMakeRange(52, 65)];
    [testAttributedString addAttribute:NSLigatureAttributeName value:[NSNumber numberWithInt:1] range:NSMakeRange(66, 80)];
    
    /* ===================== 字符间距属性 ========================*/
    [testAttributedString addAttribute:NSKernAttributeName value:@20 range:NSMakeRange(85, 91)];
    [testAttributedString addAttribute:NSKernAttributeName value:@-1 range:NSMakeRange(92, 100)];
    [testAttributedString addAttribute:NSKernAttributeName value:@0 range:NSMakeRange(99, 100)];
    
    /* ===================== 下划线属性 ========================*/
    [testAttributedString addAttribute:NSUnderlineColorAttributeName value:[UIColor redColor] range:NSMakeRange(107, 115)];
    [testAttributedString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInt:1] range:NSMakeRange(107, 115)];
    [testAttributedString addAttribute:NSUnderlineColorAttributeName value:[UIColor clearColor] range:NSMakeRange(115, 115)];
    
    
    UILabel *text2Label = [[UILabel alloc] initWithFrame:CGRectMake(50, 345, 275, 300)];
    text2Label.numberOfLines = 0;
    NSString *str2 = @"删除线测试：这几个字有删除线\n描边测试：这几个字描边\n文字阴影测试：这几个字有阴影\n文字效果测试：这几个字添加了效果\n字体偏移量测试：这几个字上偏，不偏，下偏\n字体倾斜测试：左倾斜，右倾斜\n文字扁平化测试：这几个字拉伸，这几个字压缩\n字体测试：30号，这是25号\n颜色测试：这是红色，这是绿色\n背景色设置：这是红色背景，这是绿色背景\n连字符测试：这个fl有连字符，这个fl没有连字符\n字符间距测试：这个字符间距为20，这个字符间距为1\n下划线测试：这几个字有下划线\n删除线测试：";
    
    
    NSString *te = @"删除线测试：这几个字有删除线\n描边测试：这几个字描边\n文字阴影测试：这几个字有阴影\n文字效果测试：这几个字添加了效果\n字体偏移量测试：这几个字上偏，不偏，下偏\n字体倾斜测试：左倾斜，右倾斜\n文字扁平化测试：这几个字拉伸，这几个字压缩";
    NSLog(@"%ld", [te length]);
    
    NSMutableAttributedString *test2AttributedString = [[NSMutableAttributedString alloc] initWithString:str2];
    
    /* ===================== 删除线属性 ========================*/
    [test2AttributedString addAttribute:NSStrikethroughColorAttributeName value:[UIColor greenColor] range:NSMakeRange(7, 15)];
    [test2AttributedString addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInt:2] range:NSMakeRange(7, 15)];
    [test2AttributedString addAttribute:NSStrikethroughColorAttributeName value:[UIColor clearColor] range:NSMakeRange(15, 16)];
//
//    /* ===================== 描边线属性 ======================== */
    [test2AttributedString addAttribute:NSStrokeColorAttributeName value:[UIColor greenColor] range:NSMakeRange(20, 26)];
    [test2AttributedString addAttribute:NSStrokeWidthAttributeName value:@2 range:NSMakeRange(20, 26)];
    [test2AttributedString addAttribute:NSStrokeColorAttributeName value:[UIColor blackColor] range:NSMakeRange(26, 27)];
    [test2AttributedString addAttribute:NSStrokeWidthAttributeName value:@0 range:NSMakeRange(26, 26)];
//    /* ===================== 文字阴影属性 ========================*/
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor grayColor];
    shadow.shadowOffset = CGSizeMake(0.5, 0.8);
    [test2AttributedString addAttribute:NSShadowAttributeName value:shadow range:NSMakeRange(34, 42)];
    NSShadow *shadow0 = [[NSShadow alloc] init];
    shadow0.shadowColor = [UIColor clearColor];
    shadow0.shadowOffset = CGSizeMake(0.5, 0.8);
    [test2AttributedString addAttribute:NSShadowAttributeName value:shadow0 range:NSMakeRange(42, 42)];
//
//    /* ===================== 文字效果属性 ========================*/
//    [test2AttributedString addAttribute:NSTextEffectAttributeName value:NSTextEffectLetterpressStyle range:NSMakeRange(49, 58)];
//    [test2AttributedString addAttribute:NSTextEffectAttributeName value:nil range:NSMakeRange(49, 58)];
////
//    /* ===================== 偏移量属性 ======================== */
    
    [test2AttributedString addAttribute:NSBaselineOffsetAttributeName value:@+3 range:NSMakeRange(67, 73)];
    [test2AttributedString addAttribute:NSBaselineOffsetAttributeName value:@-3 range:NSMakeRange(77, 79)];
//
//    /* ===================== 倾斜属性 ========================*/
    [test2AttributedString addAttribute:NSObliquenessAttributeName value:@0.5 range:NSMakeRange(87, 91)];
    [test2AttributedString addAttribute:NSObliquenessAttributeName value:@-0.5 range:NSMakeRange(91, 94)];
    [test2AttributedString addAttribute:NSObliquenessAttributeName value:@0.0 range:NSMakeRange(94, 94)];
//
//    /* ===================== 扁平化属性 ========================*/
    [test2AttributedString addAttribute:NSExpansionAttributeName value:@0.3 range:NSMakeRange(103, 110)];
    [test2AttributedString addAttribute:NSExpansionAttributeName value:@-0.5 range:NSMakeRange(110, 116)];

    
    label.attributedText = testAttributedString;
    [self.view addSubview:label];
    text2Label.attributedText = test2AttributedString;
    [self.view addSubview:text2Label];
    
 }

@end
