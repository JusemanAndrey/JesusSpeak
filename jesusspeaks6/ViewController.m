//
//  ViewController.m
//  jesusspeaks6
//
//  Created by OkSeJu on 6/29/15.
//  Copyright (c) 2015 fsoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mostBackImageView;
@synthesize backgroundImageView;
@synthesize coverImageView;
@synthesize middleImageView;
@synthesize jesusImageView0;
@synthesize jesusImageView1;
@synthesize coverHalfImageView;
@synthesize lightImageView;

int count = 0;
BOOL again = YES;
UIImage *JesusImage;
UIImage *middleImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [mostBackImageView setHidden:YES];
    [mostBackImageView setAlpha:1.0f];
    
    [backgroundImageView setHidden:NO];
    [backgroundImageView setAlpha:1.0f];
    
    [coverImageView setHidden:YES];
    [coverImageView setAlpha:0.0f];
    
    [middleImageView setHidden:YES];
    //add
    //[middleImageView setImage:[UIImage imageNamed:@"middle6_1.png"]];
    [middleImageView setAlpha:0.0f];
    
    [jesusImageView0 setHidden:YES];
    [jesusImageView0 setAlpha:0.0f];
    
    [jesusImageView1 setHidden:YES];
    //[jesusImageView1 setImage:[UIImage imageNamed:@"jesus6_3.png"]];
    [jesusImageView1 setAlpha:0.0f];
    
    [coverHalfImageView setHidden:YES];
    [coverHalfImageView setAlpha:0.0f];
    
    [lightImageView setHidden:YES];
    [lightImageView setAlpha:0.0f];
    
//    UIImage *image = [UIImage imageNamed:@"jesus6_1.png"];
//    UIImage *mask = [UIImage imageNamed:@"all_black.png"];
//    UIImage *resizedImage = [self imageWithImage:image scaledToSize:CGSizeMake(image.size.width, image.size.height)];
//    JesusImage = [self maskImage:resizedImage withMask:mask];
//    image = [UIImage imageNamed:@"middle6.png"];
//    mask = [UIImage imageNamed:@"all_black.png"];
//    resizedImage = [self imageWithImage:image scaledToSize:CGSizeMake(image.size.width, image.size.height)];
//    middleImage = [self maskImage:resizedImage withMask:mask];
    [self createMaskForImage:jesusImageView1];
    [self createMaskForImage:middleImageView];
}

-(void)createMaskForImage:(UIImageView *)image
{
    CALayer *mask = [CALayer layer];
    UIImage *maskImage = [UIImage imageNamed:@"all_black.png"];
    mask.contents = (id)[maskImage CGImage];
    mask.frame = CGRectMake(0, 0,maskImage.size.width, maskImage.size.height);
    image.layer.mask = mask;
    image.layer.masksToBounds = YES;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (again) {
        //imageUpdateTimer = [NSTimer scheduledTimerWithTimeInterval:TIMEINTERVAL target:self selector:@selector(showImage) userInfo:nil repeats:YES];
        [self showImage];
    }
}

- (void) showImage {
    again = NO;
    [mostBackImageView setHidden:NO];
    [UIView animateWithDuration:2.0f animations:^{
        [backgroundImageView setAlpha:0.0f];
    } completion:^(BOOL finished) {
        [backgroundImageView setHidden:YES];
        [coverHalfImageView setHidden:NO];
        [jesusImageView0 setHidden:NO];
        [UIView animateWithDuration:2.0f animations:^{
            [jesusImageView0 setAlpha:0.8f];
            [coverHalfImageView setAlpha:1.0];
        } completion:^(BOOL finished) {
            //jesusImageView1.image = JesusImage;
            [jesusImageView1 setAlpha:0.0f];
            [jesusImageView1 setHidden:NO];
            [UIView animateWithDuration:4.0f animations:^{
                [jesusImageView0 setAlpha:0.0f];
                [jesusImageView1 setAlpha:1.0f];
            } completion:^(BOOL finished) {
                //middleImageView.image = middleImage;
                [middleImageView setAlpha:1.0f];
                [middleImageView setHidden:NO];
                [UIView animateWithDuration:2.0f animations:^{
                    [jesusImageView1 setAlpha:0.0f];
                    //[middleImageView setAlpha:1.0f];
                } completion:^(BOOL finished) {
                    [lightImageView setHidden:NO];
                    [UIView animateWithDuration:2.0f animations:^{
                        [lightImageView setAlpha:1.0f];
                    } completion:^(BOOL finished) {
                        [coverImageView setHidden:NO];
                        [UIView animateWithDuration:3.0f animations:^{
                            [lightImageView setAlpha:0.0f];
                            [middleImageView setAlpha:0.0f];
                            [jesusImageView1 setAlpha:0.0f];
                            [coverHalfImageView setAlpha:0.0f];
                            [jesusImageView0 setAlpha:1.0f];
                            [coverImageView setAlpha:1.0f];
                        } completion:^(BOOL finished) {
                            [lightImageView setHidden:YES];
                            [middleImageView setHidden:YES];
                            [jesusImageView1 setHidden:YES];
                            [coverHalfImageView setHidden:YES];
                            [self toNext];
                        }];
                    }];
                }];
            }];
        }];
    }];
}

- (void) toNext {
//    [UIView animateWithDuration:0.5f animations:^{
//        [mostBackImageView setAlpha:0.0f];
//        [coverImageView setAlpha:0.0f];
//        [jesusImageView0 setAlpha:0.0f];
//    } completion:^(BOOL finished) {
//        [mostBackImageView setHidden:YES];
//        [coverImageView setHidden:YES];
//        [jesusImageView0 setHidden:YES];
//    }];

    [self presentViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"] animated:NO completion:nil];
//    [mostBackImageView setHidden:YES];
//    [coverImageView setHidden:YES];
//    [jesusImageView0 setHidden:YES];
}

- (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize {
    UIGraphicsBeginImageContext(newSize);
    
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return newImage;
}
// Returns a masked image
- (UIImage*) maskImage:(UIImage *)image withMask:(UIImage *)maskImage {
    
    CGImageRef maskRef = maskImage.CGImage;
    
    CGImageRef mask = CGImageMaskCreate(CGImageGetWidth(maskRef),
                                        CGImageGetHeight(maskRef),
                                        CGImageGetBitsPerComponent(maskRef),
                                        CGImageGetBitsPerPixel(maskRef),
                                        CGImageGetBytesPerRow(maskRef),
                                        CGImageGetDataProvider(maskRef), NULL, false);
    
    CGImageRef masked = CGImageCreateWithMask([image CGImage], mask);
    CGImageRelease(mask);
    UIImage* retImage= [UIImage imageWithCGImage:masked];
    CGImageRelease(masked);
    return retImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
