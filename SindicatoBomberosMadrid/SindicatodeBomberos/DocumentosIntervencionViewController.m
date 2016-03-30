//
//  DocumentosIntervencionViewController.m
//  Sindicato de Bomberos
//
//  Created by Ernesto on 30/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import "DocumentosIntervencionViewController.h"
#import "MercanciasViewController.h"

@interface DocumentosIntervencionViewController ()

@end

@implementation DocumentosIntervencionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backButtonPressed:(UIBarButtonItem*) backButton{
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)mercanciasButtonPressed:(id)sender {
    MercanciasViewController *mercanciasVC = [[MercanciasViewController alloc] init];
    [self.navigationController pushViewController:mercanciasVC animated:YES];
}
- (IBAction)manualesButtonPressed:(id)sender {
    
}
- (IBAction)maniobrasButtonPressed:(id)sender {
    
}
- (IBAction)protocolosButtonPressed:(id)sender {
    
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
