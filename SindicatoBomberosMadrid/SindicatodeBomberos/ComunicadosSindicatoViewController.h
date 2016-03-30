//
//  ComunicadosSindicatoViewController.h
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 29/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ComunicadosSindicatoViewController : UIViewController <UITableViewDelegate,UITableViewDataSource,UIDocumentInteractionControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *lista;
-(IBAction)backButtonPressed:(UIBarButtonItem*) backButton;

@end
