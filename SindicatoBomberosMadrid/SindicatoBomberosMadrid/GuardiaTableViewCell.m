//
//  GuardiaTableViewCell.m
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 27/03/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import "GuardiaTableViewCell.h"

@implementation GuardiaTableViewCell

@synthesize fecha,destino,horario,tipo;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
