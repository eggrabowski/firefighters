//
//  ListadoDeGuardiasViewController.h
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 27/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListadoDeGuardiasViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *lista;
-(IBAction)backButtonPressed:(UIBarButtonItem*) backButton;

@end
