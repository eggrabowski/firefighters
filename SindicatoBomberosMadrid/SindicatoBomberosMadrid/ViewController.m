//
//  ViewController.m
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 12/02/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import "ViewController.h"
#import "MainMenuViewController.h"
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
    
    //Label borders
    
    labelNombre.layer.borderWidth = 1.5;
    labelApellido1.layer.borderWidth = 1.5;
    labelApellido2.layer.borderWidth = 1.5;
    labelSeis.layer.borderWidth = 1.5;
    labelEmail.layer.borderWidth = 1.5;
    
    [[labelNombre layer] setBorderColor:[[UIColor colorWithRed:18.0/255.0
                                                        green:31.0/255.0
                                                         blue:162.0/255.0
                                                        alpha:1.0] CGColor]];
    [[labelApellido1 layer] setBorderColor:[[UIColor colorWithRed:18.0/255.0
                                                         green:31.0/255.0
                                                          blue:162.0/255.0
                                                         alpha:1.0] CGColor]];
    [[labelApellido2 layer] setBorderColor:[[UIColor colorWithRed:18.0/255.0
                                                         green:31.0/255.0
                                                          blue:162.0/255.0
                                                         alpha:1.0] CGColor]];
    [[labelSeis layer] setBorderColor:[[UIColor colorWithRed:18.0/255.0
                                                         green:31.0/255.0
                                                          blue:162.0/255.0
                                                         alpha:1.0] CGColor]];
    [[labelEmail layer] setBorderColor:[[UIColor colorWithRed:18.0/255.0
                                                         green:31.0/255.0
                                                          blue:162.0/255.0
                                                         alpha:1.0] CGColor]];
    
    
    //Keyboard hiding
    
    formNombre.delegate = self;
    formApellido1.delegate = self;
    formApellido2.delegate = self;
    formSeis.delegate = self;
    formEmail.delegate = self;
    
    //Form borders
    
    formNombre.layer.masksToBounds=YES;
    formNombre.layer.borderColor=[[UIColor colorWithRed:79.0/255.0
                                                  green:165.0/255.0
                                                   blue:213.0/255.0
                                                  alpha:1.0] CGColor];
    formNombre.layer.borderWidth= 1.0f;
    
    formApellido1.layer.masksToBounds=YES;
    formApellido1.layer.borderColor=[[UIColor colorWithRed:79.0/255.0
                                                  green:165.0/255.0
                                                   blue:213.0/255.0
                                                  alpha:1.0] CGColor];
    formApellido1.layer.borderWidth= 1.0f;
    
    formApellido2.layer.masksToBounds=YES;
    formApellido2.layer.borderColor=[[UIColor colorWithRed:79.0/255.0
                                                  green:165.0/255.0
                                                   blue:213.0/255.0
                                                  alpha:1.0] CGColor];
    formApellido2.layer.borderWidth= 1.0f;
    
    formSeis.layer.masksToBounds=YES;
    formSeis.layer.borderColor=[[UIColor colorWithRed:79.0/255.0
                                                  green:165.0/255.0
                                                   blue:213.0/255.0
                                                  alpha:1.0] CGColor];
    formSeis.layer.borderWidth= 1.0f;
    
    formEmail.layer.masksToBounds=YES;
    formEmail.layer.borderColor=[[UIColor colorWithRed:79.0/255.0
                                                  green:165.0/255.0
                                                   blue:213.0/255.0
                                                  alpha:1.0] CGColor];
    formEmail.layer.borderWidth= 1.0f;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onclickEnviar:(id)sender {
    NSLog(@"Enviar clicked");
    MainMenuViewController *menu = [[MainMenuViewController alloc] initWithNibName:@"MainMenuViewController" bundle:nil];
    [self.navigationController pushViewController:menu animated:YES];
    //if ([self fieldsFullfilled]) {
        //TODO: campos rellenos proceder
        //TODO: Comprobar campos corrector (formato email, nombre es solo letras etc...)
        //TODO: Enviar en mayusculas
    //} else {
    //    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
    //                                                    message:@"Se deben rellenar todos los campos"
    //                                                   delegate:nil
    //                                          cancelButtonTitle:@"OK"
    //                                          otherButtonTitles:nil];
    //    [alert show];
    //}
}

- (Boolean) fieldsFullfilled {
    return (formNombre.text && formNombre.text.length > 0) &&
            (formApellido1.text && formApellido1.text.length > 0) &&
            (formApellido2.text && formApellido2.text.length > 0) &&
            (formSeis.text && formSeis.text.length > 0) &&
            (formEmail.text && formEmail.text.length > 0);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

//Keyboard hiding

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
