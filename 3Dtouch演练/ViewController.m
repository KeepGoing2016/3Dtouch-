//
//  ViewController.m
//  3Dtouch演练
//
//  Created by lumf on 16/4/15.
//  Copyright © 2016年 lumf. All rights reserved.
//

#import "ViewController.h"
#import "TouchViw_3D.h"
#import "PopViewController.h"

@interface ViewController ()
@property (nonatomic, weak) UIImageView *touchImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TouchViw_3D *touchView = [[TouchViw_3D alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    touchView.center = CGPointMake(self.view.frame.size.width/2.0, 200);
    [self.view addSubview:touchView];
    
    UIImageView *icon = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"gouwuche"]];
    icon.center= self.view.center;
    icon.userInteractionEnabled = YES;
    [self.view addSubview:icon];
    self.touchImageView = icon;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self check3DTouch];
}

-(void)check3DTouch{
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        [self registerForPreviewingWithDelegate:(id)self sourceView:self.touchImageView];
    }
}

- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location
{
    //防止重复加入
    if ([self.presentedViewController isKindOfClass:[PopViewController class]])
    {
        return nil;
    }
    else
    {
        PopViewController *peekViewController = [[PopViewController alloc] init];
        return peekViewController;
        //        UIViewController *vc = [[UIViewController alloc]init];
        //        vc.view.backgroundColor = [UIColor redColor];
        return peekViewController;
    }
}

@end
