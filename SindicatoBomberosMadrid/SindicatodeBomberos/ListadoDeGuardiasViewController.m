//
//  ListadoDeGuardiasViewController.m
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 27/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import "ListadoDeGuardiasViewController.h"
#import "Guardia.h"
#import "GuardiaTableViewCell.h"
#import "DatosContactoViewController.h"

@interface ListadoDeGuardiasViewController ()


@end

@implementation ListadoDeGuardiasViewController

@synthesize lista;

NSArray *arrayGuardias;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [lista setDelegate:self];
    [lista setDataSource:self];
    
    //Set row dimension
    
    //self.lista.rowHeight = 50.;
    
    //Remove separators
    
    self.lista.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    //Mocking of guardias
    
    NSString *fecha1 = @"01 Ene";
    NSString *destino1 = @"VILLAVICIOSA PARQUE";
    NSString *horario1 = @"24h";
    NSString *tipo1 = @"PARQUE";
    
    NSString *fecha2 = @"11 Dic";
    NSString *destino2 = @"ARGANDA PARQUE";
    NSString *horario2 = @"24h";
    NSString *tipo2 = @"PARQUE";
    
    NSString *fecha3 = @"15 Dic";
    NSString *destino3 = @"LOZOYUELA PARQUE";
    NSString *horario3 = @"12h";
    NSString *tipo3 = @"PARQUE";
    
    Guardia *g1 = [[Guardia alloc] initWithDate:fecha1 destino:destino1 horario:horario1 andTipo:tipo1];
    Guardia *g2 = [[Guardia alloc] initWithDate:fecha2 destino:destino2 horario:horario2 andTipo:tipo2];
    Guardia *g3 = [[Guardia alloc] initWithDate:fecha3 destino:destino3 horario:horario3 andTipo:tipo3];
    
    arrayGuardias = @[g1,g2,g3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backButtonPressed:(UIBarButtonItem*) backButton{
    NSLog(@"Back Pressed");
    [[self navigationController] popViewControllerAnimated:YES];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {    
    static NSString *simpleTableIdentifier = @"GuardiaTableViewCell";
    
    GuardiaTableViewCell *cell = (GuardiaTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"GuardiaTableViewCell" owner:self options:nil];
        cell = [nibArray objectAtIndex:0];
    }
    //border
    [cell.contentView.layer setBorderColor:[UIColor colorWithRed:178.0/255.0
                                                           green:176.0/255.0
                                                            blue:176.0/255.0
                                                           alpha:1.0].CGColor];
    [cell.contentView.layer setBorderWidth: 1.];
    [cell.contentView.layer setMasksToBounds: YES];
    
    if (indexPath.section == 0) {
        // Disable interaction in titles cell
        cell.userInteractionEnabled = NO;
        
        
        //background
        [cell.contentView.layer setBackgroundColor:[UIColor colorWithRed:78.0/255.0
                                                                   green:103.0/255.0
                                                                    blue:179.0/255.0
                                                                   alpha:1.0].CGColor];
        [cell.fecha setText:@"Fecha"];
        [cell.destino setText:@"Destino"];
        [cell.tipo setText:@"Tipo"];
        [cell.horario setText:@"Horario"];
        [cell.fecha setTextColor: [UIColor whiteColor]];
        [cell.destino setTextColor: [UIColor whiteColor]];
        [cell.tipo setTextColor: [UIColor whiteColor]];
        [cell.horario setTextColor: [UIColor whiteColor]];
        cell.destino.lineBreakMode = NSLineBreakByWordWrapping;
        cell.destino.numberOfLines = 3;
    } else {
        //background
        [cell.contentView.layer setBackgroundColor:[UIColor colorWithRed:217.0/255.0
                                                                   green:227.0/255.0
                                                                    blue:244.0/255.0
                                                                   alpha:1.0].CGColor];
        //set content
        [cell.fecha setText:[[arrayGuardias objectAtIndex:indexPath.section-1] getDate]];
        [cell.destino setText:[[arrayGuardias objectAtIndex:indexPath.section-1] getDestino]];
        [cell.tipo setText:[[arrayGuardias objectAtIndex:indexPath.section-1] getTipo]];
        [cell.horario setText:[[arrayGuardias objectAtIndex:indexPath.section-1] getHorario]];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger guardiaNo = indexPath.section;
    NSLog(@"Guardia selected: %li",guardiaNo);
    if (guardiaNo>0) {
        //TODO: set fields depending on the "Guardia"
       
        /*DatosContactoViewController *datosVC= [[DatosContactoViewController alloc] initWithNibName:@"DatosContactoViewController" bundle:nil];*/
        
        
        DatosContactoViewController *datosVC= [[DatosContactoViewController alloc] initWithNombre:@"Karim"
                                                                                        apellidos:@"Laazizi Ruiz"
                                                                                        categoria:@"BC"
                                                                                           parque:@"Villaviciosa"
                                                                                      andTelefono:@"555555555"];
        
        
        
        [self.navigationController pushViewController:datosVC animated:YES];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [arrayGuardias count] + 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
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
