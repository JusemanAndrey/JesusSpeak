//
//  MainViewController.m
//  jesusspeaks6
//
//  Created by OkSeJu on 6/29/15.
//  Copyright (c) 2015 fsoft. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize backgroundImageView;
@synthesize coverImageView;
@synthesize frontImageView;
@synthesize jesusImageView;
@synthesize circleImageView;

@synthesize readButton;
@synthesize audioButton;
@synthesize dailyButton;
@synthesize tunesButton;
@synthesize whoareweButton;
@synthesize topicsButton;

UIImage *swordImage;

- (void)viewDidLoad {
    [super viewDidLoad];

    readButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    dailyButton.titleLabel.textAlignment = NSTextAlignmentCenter;
   
    [coverImageView setAlpha:1.0f];
    [frontImageView setAlpha:1.0f];
    [jesusImageView setAlpha:1.0f];
    
    [coverImageView setHidden:NO];
    [frontImageView setHidden:NO];
    [jesusImageView setHidden:NO];
    
    [circleImageView setHidden:YES];
    [circleImageView setAlpha:0.0f];
    
    [backgroundImageView setAlpha:1.0f];
    
    [readButton setHidden:YES];
    [audioButton setHidden:YES];
    [dailyButton setHidden:YES];
    [tunesButton setHidden:YES];
    [whoareweButton setHidden:YES];
    [topicsButton setHidden:YES];
    [readButton setAlpha:0.0f];
    [audioButton setAlpha:0.0f];
    [dailyButton setAlpha:0.0f];
    [tunesButton setAlpha:0.0f];
    [whoareweButton setAlpha:0.0f];
    [topicsButton setAlpha:0.0f];   
}

- (void) viewDidAppear:(BOOL)animated{
    [readButton setHidden:NO];
    [audioButton setHidden:NO];
    [dailyButton setHidden:NO];
    [tunesButton setHidden:NO];
    [whoareweButton setHidden:NO];
    [topicsButton setHidden:NO];
    [circleImageView setHidden:NO];
    [UIView animateWithDuration:3.0f animations:^{
        [coverImageView setAlpha:0.0f];
        [frontImageView setAlpha:0.0f];
        [jesusImageView setAlpha:0.0f];
        [circleImageView setAlpha:1.0f];
        [backgroundImageView setAlpha:1.0f];
        [readButton setAlpha:1.0f];
        [audioButton setAlpha:1.0f];
        [dailyButton setAlpha:1.0f];
        [tunesButton setAlpha:1.0f];
        [whoareweButton setAlpha:1.0f];
        [topicsButton setAlpha:1.0f];
    } completion:^(BOOL finished){
        [coverImageView setHidden:YES];
        [frontImageView setHidden:YES];
        [jesusImageView setHidden:YES];
    }];
}

- (IBAction)touchButton:(id)sender {
    UIButton *btn = (UIButton *)sender;
    CGRect frame = btn.frame;
    frame.origin.y -= 2;
    btn.frame = frame;
    NSInteger index = btn.tag;
    switch (index) {
        case 1:
            //[readButton setImage:[UIImage imageNamed:@"read0.png"] forState:UIControlStateNormal];
            break;
        case 2:
            //[audioButton setImage:[UIImage imageNamed:@"audio0.png"] forState:UIControlStateNormal];
            break;
        case 3:
            //[dailyButton setImage:[UIImage imageNamed:@"calendar0.png"] forState:UIControlStateNormal];
            break;
        case 4:
            //[tunesButton setImage:[UIImage imageNamed:@"tunes0.png"] forState:UIControlStateNormal];
            break;
        case 5:
            //[whoareweButton setImage:[UIImage imageNamed:@"whoarewe0.png"] forState:UIControlStateNormal];
            break;
        case 6:
            //[topicsButton setImage:[UIImage imageNamed:@"topics0.png"] forState:UIControlStateNormal];
            break;
        default:
            break;
    }
}

- (IBAction)downButton:(id)sender {
    UIButton *btn = (UIButton *)sender;
    CGRect frame = btn.frame;
    frame.origin.y += 2;
    btn.frame = frame;
    [UIView animateWithDuration:0.2f animations:^{
        [btn setAlpha:0.8f];
    }];
}

- (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize {
    UIGraphicsBeginImageContext(newSize);
    
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return newImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
