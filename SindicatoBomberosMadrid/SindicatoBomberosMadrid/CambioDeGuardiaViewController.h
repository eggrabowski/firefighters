//
//  CambioDeGuardiaViewController.h
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 11/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CambioDeGuardiaViewController : UIViewController
@property (nonatomic, retain) IBOutlet UINavigationBar *navBar;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *backButton;

-(IBAction)backButtonPressed:(UIBarButtonItem*) backButton;
-(IBAction)cambiarGuardiaPressed:(UIButton*) cambiarGuardiaButton;
-(IBAction)listadoSolicitudesPressed:(UIButton*) listadoButton;
@end
