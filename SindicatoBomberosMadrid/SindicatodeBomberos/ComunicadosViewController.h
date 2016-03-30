//
//  ComunicadosSindicatoViewController.h
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 29/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ComunicadosViewController : UIViewController <UITableViewDelegate,UITableViewDataSource,UIDocumentInteractionControllerDelegate> {
    int type;
}

@property (weak, nonatomic) IBOutlet UINavigationBar *titleBar;
@property (weak, nonatomic) IBOutlet UITableView *lista;
-(IBAction)backButtonPressed:(UIBarButtonItem*) backButton;
-(id) initWithType: (int) tipo;
@end
