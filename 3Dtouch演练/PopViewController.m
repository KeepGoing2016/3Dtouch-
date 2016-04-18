//
//  PopViewController.m
//  3Dtouch演练
//
//  Created by lumf on 16/4/18.
//  Copyright © 2016年 lumf. All rights reserved.
//

#import "PopViewController.h"

@interface PopViewController ()

@end

@implementation PopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img"]];
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
}

-(NSArray<id<UIPreviewActionItem>> *)previewActionItems{
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"action1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
    }];
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"action2" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
    }];
    UIPreviewActionGroup *group = [UIPreviewActionGroup actionGroupWithTitle:@"di" style:UIPreviewActionStyleDefault actions:@[action1,action2]];
    return @[group];
}

@end
