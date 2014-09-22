//
//  ViewController.h
//  iPure
//
//  Created by Niral Trivedi on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController
{
    MPMoviePlayerController *moviePlayer;
    
    NSString *url;
}
@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;

@property NSString *url;

//-(IBAction) playMovie;

@end
