//
//  ViewController.h
//  sparkle
//
//  Created by Sylvain DECOMBE on 09/03/2016.
//  Copyright (c) 2016 Sylvain DECOMBE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FLAnimatedImage.h"
#import "FLAnimatedImageView.h"

@interface ViewController : UIViewController {
    IBOutlet UIButton *button;
    IBOutlet UILabel *label;
    IBOutlet UITextField *login;
}

-(IBAction)hello:(id)sender;

@end

@interface ViewController1 : UIViewController {
    IBOutlet UILabel *nono;
    IBOutlet UIButton *test;
    //IBOutlet UIImageView *loader;
}
//@property (strong, nonatomic) IBOutlet FLAnimatedImageView *lightningImageView;
@end


@interface ViewController2 : UIViewController
@end