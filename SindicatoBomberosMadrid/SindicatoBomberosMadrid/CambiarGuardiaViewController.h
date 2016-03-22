//
//  CambiarGuardiaViewController.h
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 11/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CambiarGuardiaViewController : UIViewController <UITextFieldDelegate,UIPickerViewDataSource, UIPickerViewDelegate>
@property (nonatomic, retain) IBOutlet UILabel *labelCategoria;
@property (nonatomic, retain) IBOutlet UITextField *textfieldCategoria;
@property (nonatomic, retain) IBOutlet UILabel *labelTelefono;
@property (nonatomic, retain) IBOutlet UITextField *textfieldTelefono;
@property (nonatomic, retain) IBOutlet UIButton *buttonQuieroCambiar;
@property (nonatomic, retain) IBOutlet UILabel *labelFecha;
@property (nonatomic, retain) IBOutlet UITextField *textfieldFecha;
@property (nonatomic, retain) IBOutlet UILabel *labelHorario;
@property (nonatomic, retain) IBOutlet UITextField *textfieldHorario;
@property (nonatomic, retain) IBOutlet UILabel *labelTipo;
@property (nonatomic, retain) IBOutlet UITextField *textfieldTipo;
@property (nonatomic, retain) IBOutlet UILabel *labelDestino;
@property (nonatomic, retain) IBOutlet UITextField *textfieldDestino;
@property (nonatomic, retain) IBOutlet UIButton *buttonEnviar;

-(IBAction)backButtonPressed:(UIBarButtonItem*) backButton;
-(IBAction)enviarPressed:(UIButton*) enviarButton;
- (BOOL)textFieldShouldReturn:(UITextField *)textField;
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;

@end
