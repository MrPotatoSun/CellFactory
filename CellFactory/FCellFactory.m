#import "FCellFactory.h"
#import "RedCell.h"
#import "BlueCell.h"

@implementation FCellFactory

+ (FCell *)creatCell:(NSString *)cellClassName
      dictionaryData:(NSDictionary *)dictionaryData 
           indexPath:(NSIndexPath *)indexPath {
    
    FCell *cell = nil;
    
    // 方法 1
    // 1 使用代码（不采用反射机制）创建 cell
    // 2 需要引入 RedCell.h 和 BlueCell.h，
    //   如果想扩展的话，必须引入相应的类，如 YellowCell.h
    // 3 界面的绘制和数据的展示代码写在 cell 的 initData 方法中，
    //   可参见 RedCell.m 中的 initData 方法
    CGRect rect = CGRectMake(0, 0, 320, 44);
    if ([cellClassName isEqualToString:@"RedCell"]) {
        cell = [[[RedCell alloc] initWithFrame:rect] autorelease];
    } else if ([cellClassName isEqualToString:@"BlueCell"]) {
        cell = [[[BlueCell alloc] initWithFrame:rect] autorelease];
    }
    
    // 方法 2
    // 1 使用代码（采用反射机制）创建 cell
    // 2 在一定程度上，克服了静态工厂的不可扩展性，可以直接添加新的 cell 类，
    //   而不用改变工厂的代码
//    Class ReflectCellClass = NSClassFromString(cellClassName);  
//    cell = [[[ReflectCellClass alloc] initWithFrame:rect] autorelease];
    
    // 方法 3
    // 1 使用 IB 创建，界面直接由 IB 拖拽出来
    // 2 在 initData 中初始化各个控件的数据
    // 3 以 RedCell 为例，如果 RedCell 是最终的 Cell 类，不会再被继承，建议使用 IB，
    //   如果 RedCell 还会再被继承，建议使用 “方法 2”，此外还需考虑是否能用抽象工厂
//    cell = [[[NSBundle mainBundle] loadNibNamed:cellClassName 
//                                          owner:self
//                                        options:nil] objectAtIndex:0];
    
    // 这里还没有增加错误处理，最可能的错误就是传递的 cellClassName 不存在，
    // 在其它语言里接触过异常处理，在 ios 里还没怎么处理异常，这一部分以后再说
    
    // 返回的 cell 直接初始化了，同时个人感觉这是每个 cell 都必须的，所以放在这里实现了
    return [cell initData:dictionaryData indexPath:indexPath];
}

@end