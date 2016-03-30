//
//  DatosContactoViewController.m
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 29/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import "DatosContactoViewController.h"

@interface DatosContactoViewController ()

@end

@implementation DatosContactoViewController

@synthesize nombreLabel,
            apellidosLabel,
            categoriaLabel,
            parqueLabel,
            telefonoLabel;

NSString* nombreText;
NSString* apellidosText;
NSString* categoriaText;
NSString* parqueText;
NSString* telefonoText;

- (id) initWithNombre: (NSString *) nombre
            apellidos: (NSString *) apellidos
            categoria: (NSString *) categoria
               parque: (NSString *) parque
          andTelefono: (NSString *) telefono
{
    id returnId = [self init];
    
    //Set content
    
    nombreText = [NSString stringWithFormat:@"Nombre: %@", nombre];
    apellidosText = [NSString stringWithFormat:@"Apellidos: %@", apellidos];
    categoriaText = [NSString stringWithFormat:@"Categoría: %@", categoria];
    parqueText = [NSString stringWithFormat:@"Parque: %@", parque];
    telefonoText = [NSString stringWithFormat:@"Teléfono: %@", telefono];
    
    return returnId;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    nombreLabel.text = nombreText;
    apellidosLabel.text = apellidosText;
    categoriaLabel.text = categoriaText;
    parqueLabel.text = parqueText;
    telefonoLabel.text = telefonoText;
    
    //Set border
    nombreLabel.layer.borderWidth= 1.0f;
    nombreLabel.layer.borderColor=[[UIColor colorWithRed:178.0/255.0
                                                     green:176.0/255.0
                                                      blue:176.0/255.0
                                                     alpha:1.0] CGColor];
    apellidosLabel.layer.borderWidth= 1.0f;
    apellidosLabel.layer.borderColor=[[UIColor colorWithRed:178.0/255.0
                                                   green:176.0/255.0
                                                    blue:176.0/255.0
                                                   alpha:1.0] CGColor];
    categoriaLabel.layer.borderWidth= 1.0f;
    categoriaLabel.layer.borderColor=[[UIColor colorWithRed:178.0/255.0
                                                   green:176.0/255.0
                                                    blue:176.0/255.0
                                                   alpha:1.0] CGColor];
    parqueLabel.layer.borderWidth= 1.0f;
    parqueLabel.layer.borderColor=[[UIColor colorWithRed:178.0/255.0
                                                   green:176.0/255.0
                                                    blue:176.0/255.0
                                                   alpha:1.0] CGColor];
    telefonoLabel.layer.borderWidth= 1.0f;
    telefonoLabel.layer.borderColor=[[UIColor colorWithRed:178.0/255.0
                                                   green:176.0/255.0
                                                    blue:176.0/255.0
                                                   alpha:1.0] CGColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backButtonPressed:(UIBarButtonItem*) backButton {
    NSLog(@"Back Pressed");
    [[self navigationController] popViewControllerAnimated:YES];
}
- (IBAction)volverButtonPressed:(id)sender {
    NSLog(@"Volver Pressed");
    [[self navigationController] popViewControllerAnimated:YES];
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
