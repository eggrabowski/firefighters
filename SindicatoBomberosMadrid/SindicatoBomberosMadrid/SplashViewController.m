//
//  SplashViewController.m
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 10/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import "SplashViewController.h"

@import MediaPlayer;

@interface SplashViewController ()

@end

@implementation SplashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupMovie];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)setupMovie{
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"maya_fire" ofType:@"mp4"];
    NSURL *movieURL = [NSURL URLWithString:filePath];
    MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
    [self presentMoviePlayerViewControllerAnimated:movieController];
    [movieController.moviePlayer play];
}

@end
