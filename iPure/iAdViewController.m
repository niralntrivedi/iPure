//
//  iAdViewController.m
//  iPure
//
//  Created by Niral Trivedi on 6/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "iAdViewController.h"

@implementation iAdViewController
@synthesize banner, bannerIsVisible;

-(void)bannerViewDidLoadAd:(ADBannerView *)abanner {
    if(!self.bannerIsVisible){
        [UIView beginAnimations:@"animatedAdBannerOn" context:NULL];
        banner.frame = CGRectOffset(banner.frame, 0.0, 5.0);
        [UIView commitAnimations];
        self.bannerIsVisible = YES;
    }
}

-(void)bannerView:(ADBannerView *)abanner didFailToReceiveAdWithError:(NSError *)error {
    if(!self.bannerIsVisible){
        [UIView beginAnimations:@"animatedAdBannerOff" context:NULL];
        banner.frame = CGRectOffset(banner.frame, 0.0, -320.0);
        [UIView commitAnimations];
        self.bannerIsVisible = NO;
    }
}

@end
