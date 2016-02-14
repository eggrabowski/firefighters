//
//  ViewController.m
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 12/02/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

#define URLEMail @"mailto:bomberosinforma@csit.es?subject=App&body=Problema"

@interface ViewController ()

@end

@implementation ViewController

@synthesize image,
            textInfo1,
            labelNombre, labelApellido1, labelApellido2, labelSeis, labelEmail,
            formNombre, formApellido1, formApellido2, formSeis, formEmail,
            textInfo2, link,
            buttonEnviar;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    labelNombre.layer.borderWidth = 1.0;
    labelApellido1.layer.borderWidth = 1.0;
    labelApellido2.layer.borderWidth = 1.0;
    labelSeis.layer.borderWidth = 1.0;
    labelEmail.layer.borderWidth = 1.0;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onclickEnviar:(id)sender {
    NSLog(@"Enviar clicked");
    if ([self fieldsFullfilled]) {
        //TODO: campos rellenos proceder
        //TODO: Enviar en mayusculas
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Se deben rellenar todos los campos"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

- (Boolean) fieldsFullfilled {
    return (formNombre.text && formNombre.text.length > 0) &&
            (formApellido1.text && formApellido1.text.length > 0) &&
            (formApellido2.text && formApellido2.text.length > 0) &&
            (formSeis.text && formSeis.text.length > 0) &&
            (formEmail.text && formEmail.text.length > 0);
}

@end
