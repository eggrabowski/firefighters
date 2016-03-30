//
//  DatosContactoViewController.h
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 29/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatosContactoViewController : UIViewController

@property (nonatomic,retain) IBOutlet UILabel *nombreLabel;
@property (weak, nonatomic) IBOutlet UILabel *apellidosLabel;
@property (weak, nonatomic) IBOutlet UILabel *categoriaLabel;
@property (weak, nonatomic) IBOutlet UILabel *parqueLabel;
@property (weak, nonatomic) IBOutlet UILabel *telefonoLabel;

- (IBAction)backButtonPressed:(UIBarButtonItem*) backButton;
- (IBAction)volverButtonPressed:(id)sender;
- (id) initWithNombre: (NSString *) nombre
            apellidos: (NSString *) apellidos
            categoria: (NSString *) categoria
               parque: (NSString *) parque
          andTelefono: (NSString *) telefono;

@end
