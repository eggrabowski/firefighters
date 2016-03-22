#import <Foundation/Foundation.h>

@interface Noticia : NSObject {
    NSString *date;
    NSString *message;
}

- (id) initWithDate :(NSString *) fecha andMessage: (NSString *) mensaje;
- (NSString *) getDate;
- (NSString *) getMessage;
@end