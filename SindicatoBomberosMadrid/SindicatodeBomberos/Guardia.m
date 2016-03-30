#import "Guardia.h"
#import <Foundation/Foundation.h>

@interface Guardia ()

@end

@implementation Guardia

- (id) initWithDate :(NSString *) fecha destino: (NSString *) destiny horario: (NSString *) schedule andTipo: (NSString *) type {
    self = [super init];
    if (self) {
        self->date = fecha;
        self->destino = destiny;
        self->horario = schedule;
        self->tipo = type;
    }
    return self;
}

- (NSString *) getDate {
    return date;
}

- (NSString *) getDestino {
    return destino;
}

- (NSString *) getHorario {
    return horario;
}

- (NSString *) getTipo {
    return tipo;
}


@end