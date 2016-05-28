#import "NSDate+yuAdd.h"

static NSDateFormatter *dateFormatter;

@implementation NSDate (yuAdd)

+(void) initialize{
    if(nil == dateFormatter){
        dateFormatter = [[NSDateFormatter alloc] init];
    }
    
}

-(NSString *) yu_formatTo:(NSString *) toFormat{
    [dateFormatter setDateFormat:toFormat];
    return [dateFormatter stringFromDate:self];
}
+(NSString *) yu_parse:(NSString *) dateString
            fromFormat:(NSString *) fromFormat
              toFormat:(NSString *) toFormat{
    NSDate *date = [self yu_parse:dateString
                       fromFormat:fromFormat];
    [dateFormatter setDateFormat:toFormat];
    return [dateFormatter stringFromDate:date];
}
+(NSDate *) yu_parse:(NSString *) dateString fromFormat:(NSString *) fromFormat{
    [dateFormatter setDateFormat:fromFormat];
    return [dateFormatter dateFromString:dateString];
}
@end
