
#import "Noticia.h"
#import <Foundation/Foundation.h>

@interface Noticia ()

@end

@implementation Noticia

- (id)initWithDate :(NSString*) fecha andMessage: (NSString*) mensaje {
    self = [super init];
    if (self) {
        self->date = fecha;
        self->message = mensaje;
    }
    return self;
}

- (NSString *) getDate {
    return date;
}

- (NSString *) getMessage {
    return message;
}

@end
