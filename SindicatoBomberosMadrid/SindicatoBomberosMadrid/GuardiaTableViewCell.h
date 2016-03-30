//
//  GuardiaTableViewCell.h
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 27/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GuardiaTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *fecha;
@property (weak, nonatomic) IBOutlet UILabel *destino;
@property (weak, nonatomic) IBOutlet UILabel *horario;
@property (weak, nonatomic) IBOutlet UILabel *tipo;

@end
