//
//  TangramSimpleTextElement.m
//  TangramDemo
//
//  Copyright (c) 2017-2018 Alibaba. All rights reserved.
//

#import "TangramSimpleTextElement.h"

@interface TangramSimpleTextElement()

@property (nonatomic, strong) UILabel *label;

@end

@implementation TangramSimpleTextElement

- (UILabel *)label
{
    if (nil == _label) {
        _label = [[UILabel alloc]init];
        [self addSubview:_label];
    }
    return _label;
}

- (void)mui_afterGetView
{
    self.label.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    self.label.text = self.text;
    self.label.backgroundColor = [UIColor redColor];
}

+ (CGFloat)heightByModel:(TangramDefaultItemModel *)itemModel
{
    return 60.f;
}
@end
