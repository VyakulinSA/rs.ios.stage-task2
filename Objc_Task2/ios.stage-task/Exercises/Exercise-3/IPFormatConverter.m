#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if (numbersArray.count != 0){
        NSMutableString *ip = [NSMutableString new];
        
        for (int i = 0; i < 4 ; i++) {
            if (i < numbersArray.count){
                
                NSNumber *number = numbersArray[i];
                
                if (number.integerValue < 0){
                    return @"Negative numbers are not valid for input.";
                }
                
                if (number.integerValue > 255) {
                    return @"The numbers in the input array can be in the range from 0 to 255.";
                }
                
                [ip appendString:[NSString stringWithFormat:@"%@", numbersArray[i]]];
            } else {
                [ip appendString:@"0"];
            }
            
            if (i != 3){
                [ip appendString:@"."];
            }
        }
        
        return ip;
        
    } else {
        return @"";
    }
}

@end
