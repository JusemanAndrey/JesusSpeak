//
//  MainViewController.h
//  jesusspeaks6
//
//  Created by OkSeJu on 6/29/15.
//  Copyright (c) 2015 fsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UIImageView *coverImageView;
@property (weak, nonatomic) IBOutlet UIImageView *frontImageView;
@property (weak, nonatomic) IBOutlet UIImageView *jesusImageView;
@property (weak, nonatomic) IBOutlet UIImageView *circleImageView;

@property (weak, nonatomic) IBOutlet UIButton *readButton;
@property (weak, nonatomic) IBOutlet UIButton *audioButton;
@property (weak, nonatomic) IBOutlet UIButton *dailyButton;
@property (weak, nonatomic) IBOutlet UIButton *tunesButton;
@property (weak, nonatomic) IBOutlet UIButton *whoareweButton;
@property (weak, nonatomic) IBOutlet UIButton *topicsButton;

- (IBAction)touchButton:(id)sender;
- (IBAction)downButton:(id)sender;
@end
