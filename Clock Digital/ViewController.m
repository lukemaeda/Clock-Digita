//
//  ViewController.m
//  Clock Digital
//
//  Created by kunren10 on 2014/03/07.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel* lbClock;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // タイマー生成、開始　即時の実行
    NSTimer *tmr = [NSTimer scheduledTimerWithTimeInterval:1.0 //間隔
                                                    target:self
                                                  selector:@selector(tickTimer:) //メソッド
                                                  userInfo:nil
                                                  repeats:YES];
    // タイマーを開始する 即時の実行
    [tmr fire];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// タイマー処理
- (void)tickTimer:(NSTimer *)timer {
    
    // 現在日時の取得
    NSDate *dt = [NSDate date];
    
    // 表示書式の設定
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.dateFormat = @"yyyy/MM/dd\nhh:mm:ss";
    
    // 選択日時の表示
	NSString *str = [df stringFromDate:dt];
    
    // 時計表示
    self.lbClock.text = str;
    
}

@end
