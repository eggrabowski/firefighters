#import <Foundation/Foundation.h>

@interface Guardia : NSObject {
    NSString *date;
    NSString *destino;
    NSString *horario;
    NSString *tipo;
}

- (id) initWithDate :(NSString *) fecha destino: (NSString *) destiny horario: (NSString *) schedule andTipo: (NSString *) type;
- (NSString *) getDate;
- (NSString *) getDestino;
- (NSString *) getHorario;
- (NSString *) getTipo;
@end