#import <UIKit/UIKit.h>

@interface FCell : UITableViewCell

// 所有的 cell 都需要一个数据，这里我使用 NSDictionary 来传递数据，
// 此外，为解决 cell 复用中出现的问题，如异步下载图片时（具体描述太啰嗦，
// 遇到过这种问题的童鞋，你懂的），防止图片错位，需要一个唯一标示，
// 这时可以用 NSIndexPath
- (FCell *)initData:(NSDictionary *)dataDictionary 
          indexPath:(NSIndexPath *)indexPath;

@end
