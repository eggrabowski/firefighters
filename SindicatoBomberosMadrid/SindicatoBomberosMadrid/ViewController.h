//
//  ViewController.h
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 12/02/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic,retain) IBOutlet UIImageView *image;


@property (nonatomic, retain) IBOutlet UITextView *textInfo1;

@property (nonatomic, retain) IBOutlet UILabel *labelNombre;
@property (nonatomic, retain) IBOutlet UILabel *labelApellido1;
@property (nonatomic, retain) IBOutlet UILabel *labelApellido2;
@property (nonatomic, retain) IBOutlet UILabel *labelSeis;
@property (nonatomic, retain) IBOutlet UILabel *labelEmail;


@property (nonatomic, retain) IBOutlet UITextField *formNombre;
@property (nonatomic, retain) IBOutlet UITextField *formApellido1;
@property (nonatomic, retain) IBOutlet UITextField *formApellido2;
@property (nonatomic, retain) IBOutlet UITextField *formSeis;
@property (nonatomic, retain) IBOutlet UITextField *formEmail;

@property (nonatomic, retain) IBOutlet UITextView *textInfo2;
@property (nonatomic, retain) IBOutlet UILabel *link;

@property (nonatomic, retain) IBOutlet UIButton *buttonEnviar;

- (IBAction)onclickEnviar:(id)sender;


@end
