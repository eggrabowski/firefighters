//
//  NoticiasViewController.h
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 12/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoticiasViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, retain) IBOutlet UITableView *lista;
-(IBAction)backButtonPressed:(UIBarButtonItem*) backButton;
@end
