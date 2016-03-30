#import <Foundation/Foundation.h>

@interface Comunicado : NSObject {
    NSString *descripcion;
    NSString *url;
    NSString *fecha;
}

- (id) initWithDescripcion : (NSString *) description
                        url: (NSString *) urlString
                      fecha: (NSString *) date;
- (NSString *) getDescripcion;
- (NSString *) getURL;
- (NSString *) getFecha;
@end