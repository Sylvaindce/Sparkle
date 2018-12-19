//
//  ViewController.m
//  sparkle
//
//  Created by Sylvain DECOMBE on 09/03/2016.
//  Copyright (c) 2016 Sylvain DECOMBE. All rights reserved.
//

#import "ViewController.h"
#import "DataClass.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)hello:(id)sender {
    DataClass *obj=[DataClass getInstance];

    obj.str= [login text];
}
@end

@interface ViewController1()
@property (strong, nonatomic) NSTimer *timer;
@property (strong, nonatomic) IBOutlet FLAnimatedImageView *lightningImageView;
@end

@implementation ViewController1

double timerInterval = 3.0f;

-(void)viewDidLoad {
    [super viewDidLoad];
 
    FLAnimatedImage *lightningImage = [[FLAnimatedImage alloc] initWithAnimatedGIFData:[NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Icone-animation" ofType:@"gif"]]];
    
    self.lightningImageView.animatedImage = lightningImage;
    
    [self.view addSubview:self.lightningImageView];
    
    DataClass *obj=[DataClass getInstance];
    NSString *welcome_message = @"Bonjour ";
    welcome_message = [welcome_message stringByAppendingString:obj.str];
    welcome_message = [welcome_message stringByAppendingString:@" !"];
    nono.text = welcome_message;
    [[NSRunLoop mainRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSTimer *) timer {
    if (!_timer) {
        _timer = [NSTimer timerWithTimeInterval:timerInterval target:self selector:@selector(test:) userInfo:nil repeats:YES];
    }
    return _timer;
}

-(IBAction)test:(id)sender {
    ViewController *monitorMenuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
    monitorMenuViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    monitorMenuViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:monitorMenuViewController animated:YES completion:nil];
}

@end

@interface ViewController2()
@end

@implementation ViewController2
-(void)viewDidLoad{
    [super viewDidLoad];
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
