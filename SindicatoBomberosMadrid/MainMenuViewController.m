//
//  MainMenuViewController.m
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 13/02/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import "MainMenuViewController.h"
#import "CambioDeGuardiaViewController.h"
#import "NoticiasViewController.h"
#import "ComunicadosViewController.h"
#import "DocumentosIntervencionViewController.h"

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController

@synthesize //navBar,
            noticiasButton,
            guardiasButton,
            comunicadosSindicatoButton, comunicadosOficialesButton,
            documentosConsultaButton,documentosIntervencionButton,
            encuestaButton,consultaButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    comunicadosSindicatoButton.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    comunicadosSindicatoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [comunicadosSindicatoButton  setTitle:@"Comunicados\nsindicato" forState:UIControlStateNormal];
    [comunicadosSindicatoButton setBackgroundImage:[UIImage imageNamed:@"btn_blue_sm_push.png"] forState:UIControlStateHighlighted];
    
    comunicadosOficialesButton.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    comunicadosOficialesButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [comunicadosOficialesButton  setTitle:@"Comunicados\noficiales" forState:UIControlStateNormal];
    [comunicadosOficialesButton setBackgroundImage:[UIImage imageNamed:@"btn_blue_sm_push.png"] forState:UIControlStateHighlighted];
    
    documentosConsultaButton.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    documentosConsultaButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [documentosConsultaButton  setTitle:@"Documentos de\nconsulta" forState:UIControlStateNormal];
    [documentosConsultaButton setBackgroundImage:[UIImage imageNamed:@"btn_blue_sm_push.png"] forState:UIControlStateHighlighted];
    
    documentosIntervencionButton.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    documentosIntervencionButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [documentosIntervencionButton  setTitle:@"Documentos de\nintervención" forState:UIControlStateNormal];
    [documentosIntervencionButton setBackgroundImage:[UIImage imageNamed:@"btn_blue_sm_push.png"] forState:UIControlStateHighlighted];
    [encuestaButton setBackgroundImage:[UIImage imageNamed:@"btn_blue_sm_push.png"] forState:UIControlStateHighlighted];
    [consultaButton setBackgroundImage:[UIImage imageNamed:@"btn_blue_sm_push.png"] forState:UIControlStateHighlighted];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onclickGuardiasForestales:(id)sender {
     CambioDeGuardiaViewController *menuGuardias= [[CambioDeGuardiaViewController alloc] initWithNibName:@"CambioDeGuardiaViewController" bundle:nil];
    [self.navigationController pushViewController:menuGuardias animated:YES];
}

- (IBAction)onclickNoticias:(id)sender {
    NoticiasViewController *listaNoticias= [[NoticiasViewController alloc] initWithNibName:@"NoticiasViewController" bundle:nil];
    [self.navigationController pushViewController:listaNoticias animated:YES];
}

- (IBAction)onclickComunicadosSindicato:(id)sender {
    ComunicadosViewController *comunicados = [[ComunicadosViewController alloc] initWithType:0];
    [self.navigationController pushViewController:comunicados animated:YES];
}

- (IBAction)onclickComunicadosOficiales:(id)sender {
    ComunicadosViewController *comunicados = [[ComunicadosViewController alloc] initWithType:1];
    [self.navigationController pushViewController:comunicados animated:YES];
}
- (IBAction)onclickDocumentosConsulta:(id)sender {
    ComunicadosViewController *comunicados = [[ComunicadosViewController alloc] initWithType:2];
    [self.navigationController pushViewController:comunicados animated:YES];
}
- (IBAction)onclickDocumentosIntervencion:(id)sender {
    DocumentosIntervencionViewController *docIntervencion = [[DocumentosIntervencionViewController alloc] init];
    [self.navigationController pushViewController:docIntervencion animated:YES];
}
- (IBAction)onclickEncuesta:(id)sender {
    
}
- (IBAction)onclickConsulta:(id)sender {
    
}

@end
