
#import "Comunicado.h"

@implementation Comunicado

- (id) initWithDescripcion : (NSString *) description
                        url: (NSString *) urlString
                      fecha: (NSString *) date {
    self = [super init];
    self->descripcion = description;
    self->url = urlString;
    self->fecha = date;
    return self;
}
- (NSString *) getDescripcion {
    return self->descripcion;
}
- (NSString *) getURL {
    return self->url;
}
- (NSString *) getFecha {
    return self->fecha;
}

@end
