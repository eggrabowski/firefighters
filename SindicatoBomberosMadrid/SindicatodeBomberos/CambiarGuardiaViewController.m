//
//  CambiarGuardiaViewController.m
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 11/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import "CambiarGuardiaViewController.h"

@interface CambiarGuardiaViewController ()

@end

@implementation CambiarGuardiaViewController

@synthesize labelCategoria, textfieldCategoria,
            labelTelefono, textfieldTelefono,
            buttonQuieroCambiar,
            labelFecha, textfieldFecha,
            labelHorario, textfieldHorario,
            labelTipo, textfieldTipo,
            labelDestino, textfieldDestino,
            buttonEnviar;

UIPickerView *pickerViewCat, *pickerViewHora, *pickerViewTipo, *pickerViewDest;
UIDatePicker *datePicker;
NSArray *categorias, *horarios, *tipos, *destinos;
NSInteger nCats, nHoras, nTipos, nDestinos;
UITextField *keyboardResponsible;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    //Customize labels
    
    labelCategoria.layer.borderWidth = 1.5;
    [[labelCategoria layer] setBorderColor:[[UIColor colorWithRed:18.0/255.0
                                                         green:31.0/255.0
                                                          blue:162.0/255.0
                                                         alpha:1.0] CGColor]];
    labelTelefono.layer.borderWidth = 1.5;
    [[labelTelefono layer] setBorderColor:[[UIColor colorWithRed:18.0/255.0
                                                            green:31.0/255.0
                                                             blue:162.0/255.0
                                                            alpha:1.0] CGColor]];
    labelFecha.layer.borderWidth = 1.5;
    [[labelFecha layer] setBorderColor:[[UIColor colorWithRed:18.0/255.0
                                                            green:31.0/255.0
                                                             blue:162.0/255.0
                                                            alpha:1.0] CGColor]];
    labelTipo.layer.borderWidth = 1.5;
    [[labelTipo layer] setBorderColor:[[UIColor colorWithRed:18.0/255.0
                                                            green:31.0/255.0
                                                             blue:162.0/255.0
                                                            alpha:1.0] CGColor]];
    labelHorario.layer.borderWidth = 1.5;
    [[labelHorario layer] setBorderColor:[[UIColor colorWithRed:18.0/255.0
                                                            green:31.0/255.0
                                                             blue:162.0/255.0
                                                            alpha:1.0] CGColor]];
    labelDestino.layer.borderWidth = 1.5;
    [[labelDestino layer] setBorderColor:[[UIColor colorWithRed:18.0/255.0
                                                            green:31.0/255.0
                                                             blue:162.0/255.0
                                                            alpha:1.0] CGColor]];
    
    //Customize text inputs
    
    //Categoria
    textfieldCategoria.layer.borderWidth= 1.0f;
    textfieldCategoria.layer.masksToBounds=YES;
    textfieldCategoria.layer.borderColor=[[UIColor colorWithRed:79.0/255.0
                                                  green:165.0/255.0
                                                   blue:213.0/255.0
                                                  alpha:1.0] CGColor];
    
    categorias = @[@"Selecciona",@"BB", @"BC", @"JC"];
    pickerViewCat = [[UIPickerView alloc] init];
    pickerViewCat.dataSource = self;
    pickerViewCat.delegate = self;

    textfieldCategoria.inputView = pickerViewCat;
    
    //Telefono
    
    textfieldTelefono.layer.borderWidth= 1.0f;
    textfieldTelefono.layer.masksToBounds=YES;
    textfieldTelefono.layer.borderColor=[[UIColor colorWithRed:79.0/255.0
                                                          green:165.0/255.0
                                                           blue:213.0/255.0
                                                          alpha:1.0] CGColor];
    
    //Fecha
    textfieldFecha.layer.borderWidth= 1.0f;
    textfieldFecha.layer.masksToBounds=YES;
    textfieldFecha.layer.borderColor=[[UIColor colorWithRed:79.0/255.0
                                                          green:165.0/255.0
                                                           blue:213.0/255.0
                                                          alpha:1.0] CGColor];
    datePicker = [[UIDatePicker alloc] init];
    [datePicker setDate:[NSDate date]]; //initialize today
    [datePicker setMinimumDate: [NSDate date]]; //dont allow past
    datePicker.datePickerMode = UIDatePickerModeDate;
    textfieldFecha.inputView = datePicker;
    
    //Horario
    textfieldHorario.layer.borderWidth= 1.0f;
    textfieldHorario.layer.masksToBounds=YES;
    textfieldHorario.layer.borderColor=[[UIColor colorWithRed:79.0/255.0
                                                          green:165.0/255.0
                                                           blue:213.0/255.0
                                                          alpha:1.0] CGColor];
    horarios = @[@"Selecciona",@"24 h.", @"12 h."];
    pickerViewHora = [[UIPickerView alloc] init];
    pickerViewHora.dataSource = self;
    pickerViewHora.delegate = self;
    [datePicker addTarget:self action:@selector(updateTextField:) forControlEvents:UIControlEventValueChanged];
    
    textfieldHorario.inputView = pickerViewHora;
    
    //Tipo
    textfieldTipo.layer.borderWidth= 1.0f;
    textfieldTipo.layer.masksToBounds=YES;
    textfieldTipo.layer.borderColor=[[UIColor colorWithRed:79.0/255.0
                                                          green:165.0/255.0
                                                           blue:213.0/255.0
                                                          alpha:1.0] CGColor];
    tipos = @[@"Selecciona",@"Almacen", @"Ejemplo 2", @"Hello World!"];
    pickerViewTipo = [[UIPickerView alloc] init];
    pickerViewTipo.dataSource = self;
    pickerViewTipo.delegate = self;
    
    textfieldTipo.inputView = pickerViewTipo;
    
    //Destino
    textfieldDestino.layer.borderWidth= 1.0f;
    textfieldDestino.layer.masksToBounds=YES;
    textfieldDestino.layer.borderColor=[[UIColor colorWithRed:79.0/255.0
                                                          green:165.0/255.0
                                                           blue:213.0/255.0
                                                          alpha:1.0] CGColor];
    
    destinos = @[@"Selecciona",@"Alcalá",@"Torrejón",@"San Fernando"];
    pickerViewDest = [[UIPickerView alloc] init];
    pickerViewDest.dataSource = self;
    pickerViewDest.delegate = self;
    
    textfieldDestino.inputView = pickerViewDest;
    
    //Using button as label
    buttonQuieroCambiar.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    buttonQuieroCambiar.titleLabel.textAlignment = NSTextAlignmentCenter;
    [buttonQuieroCambiar  setTitle:@"QUIERO CAMBIAR LA SIGUIENTE\nGUARDIA FORESTAL" forState:UIControlStateDisabled];
    [buttonQuieroCambiar setEnabled:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backButtonPressed:(UIBarButtonItem*) backButton{
    NSLog(@"Back Pressed");
    [[self navigationController] popViewControllerAnimated:YES];
}
-(IBAction)enviarPressed:(UIButton*) enviarButton{
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (pickerView == pickerViewCat) return categorias.count;
    else if (pickerView == pickerViewHora) return horarios.count;
    else if (pickerView == pickerViewTipo) return tipos.count;
    else if (pickerView == pickerViewDest) return destinos.count;
    else return 0;
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (pickerView==pickerViewCat) return categorias[row];
    else if (pickerView==pickerViewDest) return destinos[row];
    else if (pickerView==pickerViewHora) return horarios[row];
    else if (pickerView==pickerViewTipo) return tipos[row];
    else return @"";
}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component
{
    if (row==0)
        textfieldCategoria.text = @"";
    else {
        if (pickerView==pickerViewCat) textfieldCategoria.text = categorias[row];
        if (pickerView==pickerViewDest) textfieldDestino.text = destinos[row];
        if (pickerView==pickerViewHora) textfieldHorario.text = horarios[row];
        if (pickerView==pickerViewTipo) textfieldTipo.text = tipos[row];
    }
}

-(void)updateTextField:(id)sender
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    textfieldFecha.text = [dateFormatter stringFromDate:datePicker.date];
}

//Keyboard hiding

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
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
