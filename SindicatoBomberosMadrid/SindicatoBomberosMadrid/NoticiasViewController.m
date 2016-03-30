//
//  NoticiasViewController.m
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 12/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import "NoticiasViewController.h"
#import "Noticia.h"

@interface NoticiasViewController ()

@end

@implementation NoticiasViewController

@synthesize lista;

NSArray *arrayNoticias;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [lista setDelegate:self];
    [lista setDataSource:self];
    
    //Initialize array
    
    NSString *fecha1 = @"19-02-2016";
    NSString *message1 = @"El Director General de Protección Ciudada desconvoca la reunión prevista para el lunes 22 de febrero, en relación con el nuevo Acuerdo, y se convoca para el próximo miércoles día 24 de febrero, a las 10:30 horas en la DGPC";
    Noticia *n1 = [[Noticia alloc] initWithDate:fecha1 andMessage:message1];
    
    NSString *fecha2 = @"17-02-2016";
    NSString *message2 = @"Publicamos NOTA INTERIOR sobre la RENOVACIÓN de los CASCOS F1 y F2 antiguos (+info en Comunicados Oficiales)";
    Noticia *n2 = [[Noticia alloc] initWithDate:fecha2 andMessage:message2];
    
    NSString *fecha3 = @"15-02-2016";
    NSString *message3 = @"Queda desconvocada hasta nuevo aviso la concentración de mañana en Las Rozas porque la administración aplaza la reunión del martes para presentar una modificación de su propuesta inicial. (Seguiremos informando)";
    Noticia *n3 = [[Noticia alloc] initWithDate:fecha3 andMessage:message3];
    
    arrayNoticias = @[n1,n2,n3];
    
    //Set row autodimension
    self.lista.estimatedRowHeight = 50.0;
    self.lista.rowHeight = UITableViewAutomaticDimension;
    self.lista.separatorStyle = UITableViewCellSeparatorStyleNone;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonPressed:(UIBarButtonItem*) backButton{
    NSLog(@"Back Pressed");
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [arrayNoticias count];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10.;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] init];
    headerView.backgroundColor = [UIColor clearColor];
    return headerView;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    NSString *date = [[arrayNoticias objectAtIndex:indexPath.section] getDate];
    if (indexPath.section==0) date=@"ULTIMA NOTICIA>>";
    NSString *message = [[arrayNoticias objectAtIndex:indexPath.section] getMessage];
    NSString *cellText = [[NSString alloc] initWithFormat:@"%@ %@",date,message];
    cell.textLabel.text = cellText;
    CGFloat fontSize = 14;
    [cell.textLabel setFont:[UIFont fontWithName:@"Arial" size:fontSize]];
    if (indexPath.section==0) cell.textLabel.textColor = [UIColor redColor];
    else cell.textLabel.textColor = [UIColor blueColor];
    cell.textLabel.lineBreakMode = NSLineBreakByWordWrapping; // Pre-iOS6 use UILineBreakModeWordWrap
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    
    //Calculate lines per cell
    CGSize constrain = CGSizeMake(cell.bounds.size.width, FLT_MAX);
    CGSize size = [cell.textLabel.text sizeWithFont:cell.textLabel.font
                                                    constrainedToSize:constrain
                                                    lineBreakMode:NSLineBreakByWordWrapping];
    
    cell.textLabel.numberOfLines = size.height / cell.textLabel.font.lineHeight;
    
    //Set border
    [cell.contentView.layer setBorderColor:[UIColor colorWithRed:204.0/255.0
                                                           green:204.0/255.0
                                                            blue:204.0/255.0
                                                           alpha:1.0].CGColor];
    [cell.contentView.layer setBorderWidth: 1.];
    [cell.contentView.layer setCornerRadius: 10.];
    [cell.contentView.layer setMasksToBounds: YES];
    
    //Set background color
    [cell.contentView.layer setBackgroundColor:[UIColor colorWithRed:238.0/255.0
                                                               green:238.0/255.0
                                                                blue:238.0/255.0
                                                               alpha:1.0].CGColor];
    
    //Disable selection
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    return cell;
}

@end
