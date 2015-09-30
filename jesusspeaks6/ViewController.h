//
//  ViewController.h
//  jesusspeaks6
//
//  Created by OkSeJu on 6/29/15.
//  Copyright (c) 2015 fsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *imageUpdateTimer;
}

@property (weak, nonatomic) IBOutlet UIImageView *mostBackImageView;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UIImageView *coverImageView;
@property (weak, nonatomic) IBOutlet UIImageView *middleImageView;
@property (weak, nonatomic) IBOutlet UIImageView *jesusImageView0;
@property (weak, nonatomic) IBOutlet UIImageView *jesusImageView1;
@property (weak, nonatomic) IBOutlet UIImageView *coverHalfImageView;
@property (weak, nonatomic) IBOutlet UIImageView *lightImageView;

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;

@end


