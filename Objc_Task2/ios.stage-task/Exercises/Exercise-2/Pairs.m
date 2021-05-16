#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger count = 0;
    
    for (int i = 0; i < array.count; i++) {
        for (int j = 0; j < array.count; j++) {
            if (i == j){
                continue;;
            }
            if (abs(array[j].intValue) - abs(array[i].intValue) == abs(number.intValue)) {
                count += 1;
            }
        }
    }
    return count;
}

@end
