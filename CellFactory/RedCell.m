#import "RedCell.h"

@implementation RedCell

- (FCell *)initData:(NSDictionary *)dataDictionary
          indexPath:(NSIndexPath *)indexPath {

    // 使用代码绘制界面
    UILabel *label = [[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)] autorelease];
    [self addSubview:label];
    label.textColor = [UIColor redColor];
    label.textAlignment = UITextAlignmentLeft;
    label.text = [dataDictionary objectForKey:@"color"];
    
    // 使用 IB 绘制界面
//    [colorLabelIB setText:[dataDictionary objectForKey:@"color"]];

    return self;
}

- (void)dealloc {
    [colorLabelIB release];
    [super dealloc];
}

@end
