#import "BlueCell.h"

@implementation BlueCell

- (FCell *)initData:(NSDictionary *)dataDictionary 
          indexPath:(NSIndexPath *)indexPath {
//    [colorLabelIB setText:[dataDictionary objectForKey:@"color"]];
    
    UILabel *label = [[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)] autorelease];
    [self addSubview:label];
    label.textColor = [UIColor blueColor];
    label.textAlignment = UITextAlignmentRight;
    label.text = [dataDictionary objectForKey:@"color"];
    
    return self;
}

- (void)dealloc {
    [colorLabelIB release];
    [super dealloc];
}

@end
