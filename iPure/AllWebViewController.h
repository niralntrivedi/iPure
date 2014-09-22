//
//  IntroductionViewController.h
//  iPure
//
//  Created by Niral Trivedi on 6/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface AllWebViewController : UIViewController{

    IBOutlet UISegmentedControl *beforekriyaVersionSegmentControl; 
    IBOutlet UISegmentedControl *kriyaVersionSegmentControl; 
    IBOutlet UISegmentedControl *afterkriyaVersionSegmentControl; 
    ADBannerView *banner;
}

@property (nonatomic, retain)IBOutlet UIWebView *introWeb;
@property (nonatomic, retain)IBOutlet UIWebView *beforeKriyaWeb;
@property (nonatomic, retain)IBOutlet UIWebView *kriyaWeb;
@property (nonatomic, retain)IBOutlet UIWebView *afterKriyaWeb;

@property (atomic, assign)BOOL bannerIsVisible;
@property (atomic, retain)IBOutlet ADBannerView *banner;
@end
