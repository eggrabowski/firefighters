//
//  MainMenuViewController.h
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 13/02/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainMenuViewController : UIViewController

//@property (nonatomic, retain) IBOutlet UIButton *buttonEnviar;

//@property (nonatomic, retain) IBOutlet UINavigationBar *navBar;
@property (nonatomic, retain) IBOutlet UIButton *noticiasButton;
@property (nonatomic, retain) IBOutlet UIButton *guardiasButton;
@property (nonatomic, retain) IBOutlet UIButton *comunicadosSindicatoButton;
@property (nonatomic, retain) IBOutlet UIButton *comunicadosOficialesButton;
@property (nonatomic, retain) IBOutlet UIButton *documentosConsultaButton;
@property (nonatomic, retain) IBOutlet UIButton *documentosIntervencionButton;
@property (nonatomic, retain) IBOutlet UIButton *encuestaButton;
@property (nonatomic, retain) IBOutlet UIButton *consultaButton;

- (IBAction)onclickGuardiasForestales:(id)sender;
- (IBAction)onclickNoticias:(id)sender;
- (IBAction)onclickComunicadosSindicato:(id)sender;
- (IBAction)onclickComunicadosOficiales:(id)sender;
- (IBAction)onclickDocumentosConsulta:(id)sender;
- (IBAction)onclickDocumentosIntervencion:(id)sender;
- (IBAction)onclickEncuesta:(id)sender;
- (IBAction)onclickConsulta:(id)sender;
@end
