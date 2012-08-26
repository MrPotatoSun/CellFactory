#import <Foundation/Foundation.h>
#import "FCell.h"

@interface FCellFactory : NSObject

+ (FCell *)creatCell:(NSString *)cellClassName
      dictionaryData:(NSDictionary *)dictionaryData 
           indexPath:(NSIndexPath *)indexPath;

@end
