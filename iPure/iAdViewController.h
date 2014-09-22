//
//  iAdViewController.h
//  iPure
//
//  Created by Niral Trivedi on 6/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface iAdViewController : UIViewController{
    ADBannerView *banner;
}

@property (atomic, assign)BOOL bannerIsVisible;
@property (atomic, retain)IBOutlet ADBannerView *banner;
@end
