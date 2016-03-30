
@import AVFoundation;
@import AVKit;

#import "SplashViewController.h"
#import "ViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

ViewController *viewController;

- (void)viewDidLoad {
    [super viewDidLoad];
    //Get ready the next view
    //TODO: Move to login or main screen depending on Preferences (See delegate)
    viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    // grab a local URL to our video
    NSURL *videoURL = [[NSBundle mainBundle]URLForResource:@"maya_fire" withExtension:@"mp4"];
    
    // create an AVPlayer
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playerDidFinishPlaying:) name:AVPlayerItemDidPlayToEndTimeNotification object:player.currentItem];
    
    // create a player view controller
    AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
    controller.showsPlaybackControls = false;
    controller.player = player;
    [player play];
    
    // show the view controller
    [self addChildViewController:controller];
    [self.view addSubview:controller.view];
    controller.view.frame = self.view.frame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) playerDidFinishPlaying: (NSNotification *) note {
    //NSLog (@"Video ended");
    [self.navigationController pushViewController:viewController animated:NO];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
