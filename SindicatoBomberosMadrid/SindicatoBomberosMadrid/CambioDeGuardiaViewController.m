//
//  CambioDeGuardiaViewController.m
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 11/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import "CambioDeGuardiaViewController.h"
#import "CambiarGuardiaViewController.h"

@interface CambioDeGuardiaViewController ()

@end

@implementation CambioDeGuardiaViewController

@synthesize backButton,navBar;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(IBAction)backButtonPressed:(UIBarButtonItem*) backButton
{
    NSLog(@"Back Pressed");
    [[self navigationController] popViewControllerAnimated:YES];
}

-(IBAction)cambiarGuardiaPressed:(UIButton*) cambiarGuardiaButton {
    CambiarGuardiaViewController *cambiarGuardia= [[CambiarGuardiaViewController alloc] initWithNibName:@"CambiarGuardiaViewController" bundle:nil];
    [self.navigationController pushViewController:cambiarGuardia animated:YES];
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
