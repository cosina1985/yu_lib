#import <Foundation/Foundation.h>

#define yu_YYYYMMDD @"yyyy-MM-dd"
#define yu_YYYYMMDDHHMM @"yyyy-MM-dd HH:mm"
#define yu_YYYYMMDDHHMMSS @"yyyy-MM-dd HH:mm:ss"
#define yu_MMDDHHMM @"MM-dd HH:mm"

@interface NSDate (yuAdd)
-(NSString *) yu_formatTo:(NSString *) format;
+(NSString *) yu_parse:(NSString *) dateString
            fromFormat:(NSString *) fromFormat
              toFormat:(NSString *) toFormat;
+(NSDate *) yu_parse:(NSString *) dateString fromFormat:(NSString *) fromFormat;
@end
