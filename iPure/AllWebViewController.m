//
//  IntroductionViewController.m
//  iPure
//
//  Created by Niral Trivedi on 6/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AllWebViewController.h"


@implementation AllWebViewController

//Web view
@synthesize introWeb;
@synthesize beforeKriyaWeb;
@synthesize kriyaWeb;
@synthesize afterKriyaWeb;

//Banner
@synthesize banner, bannerIsVisible;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *introUrlAddress = [[NSBundle mainBundle] pathForResource:@"introduction" ofType:@"html"];
    NSURL *introUrl = [NSURL fileURLWithPath:introUrlAddress];
    NSURLRequest *introRequestObj = [NSURLRequest requestWithURL:introUrl];
    [introWeb loadRequest:introRequestObj];
    
    NSString *beforeKriyaUrlAddress = [[NSBundle mainBundle] pathForResource:@"beforeKriyaShort" ofType:@"html"];
    NSURL *beforeKriyaUrl = [NSURL fileURLWithPath:beforeKriyaUrlAddress];
    NSURLRequest *beforeKriyaRequestObj = [NSURLRequest requestWithURL:beforeKriyaUrl];
    [beforeKriyaWeb loadRequest:beforeKriyaRequestObj];
    
    NSString *kriyaUrlAddress = [[NSBundle mainBundle] pathForResource:@"shortKriya" ofType:@"html"];
    NSURL *kriyaUrl = [NSURL fileURLWithPath:kriyaUrlAddress];
    NSURLRequest *kriyaRequestObj = [NSURLRequest requestWithURL:kriyaUrl];
    [kriyaWeb loadRequest:kriyaRequestObj];
    
    NSString *afterKriyaUrlAddress = [[NSBundle mainBundle] pathForResource:@"afterKriyaShort" ofType:@"html"];
    NSURL *afterKriyaUrl = [NSURL fileURLWithPath:afterKriyaUrlAddress];
    NSURLRequest *afterKriyaRequestObj = [NSURLRequest requestWithURL:afterKriyaUrl];
    [afterKriyaWeb loadRequest:afterKriyaRequestObj];
}

-(IBAction)changeBeforeKriyaVersion:(id)sender 
{
    switch (beforekriyaVersionSegmentControl.selectedSegmentIndex) {
        case 0:{
            NSString *beforeKriyaUrlAddress = [[NSBundle mainBundle] pathForResource:@"beforeKriyaShort" ofType:@"html"];
            NSURL *beforeKriyaUrl = [NSURL fileURLWithPath:beforeKriyaUrlAddress];
            NSURLRequest *beforeKriyaRequestObj = [NSURLRequest requestWithURL:beforeKriyaUrl];
            [beforeKriyaWeb loadRequest:beforeKriyaRequestObj];
            break;
        }
        case 1: {
            NSString *beforeKriyaUrlAddress = [[NSBundle mainBundle] pathForResource:@"beforeKriyaLong" ofType:@"html"];
            NSURL *beforeKriyaUrl = [NSURL fileURLWithPath:beforeKriyaUrlAddress];
            NSURLRequest *beforeKriyaRequestObj = [NSURLRequest requestWithURL:beforeKriyaUrl];
            [beforeKriyaWeb loadRequest:beforeKriyaRequestObj];
            break;
        }
        default:
            break;
    }
}

-(IBAction)changeKriyaVersion:(id)sender 
{
    switch (kriyaVersionSegmentControl.selectedSegmentIndex) {
        case 0:{
            NSString *kriyaUrlAddress = [[NSBundle mainBundle] pathForResource:@"shortKriya" ofType:@"html"];
            NSURL *kriyaUrl = [NSURL fileURLWithPath:kriyaUrlAddress];
            NSURLRequest *kriyaRequestObj = [NSURLRequest requestWithURL:kriyaUrl];
            [kriyaWeb loadRequest:kriyaRequestObj];
            break;
        }
        case 1: {
            NSString *kriyaUrlAddress = [[NSBundle mainBundle] pathForResource:@"longKriya" ofType:@"html"];
            NSURL *kriyaUrl = [NSURL fileURLWithPath:kriyaUrlAddress];
            NSURLRequest *kriyaRequestObj = [NSURLRequest requestWithURL:kriyaUrl];
            [kriyaWeb loadRequest:kriyaRequestObj];
            break;
        }
        default:
            break;
    }
}

-(IBAction)changeAfterKriyaVersion:(id)sender 
{
    switch (afterkriyaVersionSegmentControl.selectedSegmentIndex) {
        case 0:{
            NSString *afterKriyaUrlAddress = [[NSBundle mainBundle] pathForResource:@"afterKriyaShort" ofType:@"html"];
            NSURL *afterKriyaUrl = [NSURL fileURLWithPath:afterKriyaUrlAddress];
            NSURLRequest *afterKriyaRequestObj = [NSURLRequest requestWithURL:afterKriyaUrl];
            [afterKriyaWeb loadRequest:afterKriyaRequestObj];
            break;
        }
        case 1: {
            NSString *afterKriyaUrlAddress = [[NSBundle mainBundle] pathForResource:@"afterKriyaLong" ofType:@"html"];
            NSURL *afterKriyaUrl = [NSURL fileURLWithPath:afterKriyaUrlAddress];
            NSURLRequest *afterKriyaRequestObj = [NSURLRequest requestWithURL:afterKriyaUrl];
            [afterKriyaWeb loadRequest:afterKriyaRequestObj];
            break;
        }
        default:
            break;
    }
}

//When Banner Loads
-(void)bannerViewDidLoadAd:(ADBannerView *)abanner {
    if(!self.bannerIsVisible){
        [UIView beginAnimations:@"animatedAdBannerOn" context:NULL];
        banner.frame = CGRectOffset(banner.frame, 0.0, 5.0);
        [UIView commitAnimations];
        self.bannerIsVisible = YES;
    }
}

//When Banner is not present
-(void)bannerView:(ADBannerView *)abanner didFailToReceiveAdWithError:(NSError *)error {
    if(!self.bannerIsVisible){
        [UIView beginAnimations:@"animatedAdBannerOff" context:NULL];
        banner.frame = CGRectOffset(banner.frame, 0.0, -320.0);
        [UIView commitAnimations];
        self.bannerIsVisible = NO;
    }
}



@end
