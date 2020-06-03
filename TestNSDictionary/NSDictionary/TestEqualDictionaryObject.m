//
//  TestEqualDictionaryObject.m
//  TestNSDictionary
//
//  Created by Bill liu on 2020/6/2.
//  Copyright © 2020 Mzying. All rights reserved.
//

#import "TestEqualDictionaryObject.h"

@implementation TestEqualDictionaryObject


///MARK: - Override Method

+ (void)run{
    
    [self begin];
    
    TestEqualDictionaryObject *obj1 = [[TestEqualDictionaryObject alloc] initWithName:@"wahaha" age:@(1) hegiht:200];
    TestEqualDictionaryObject *obj2 = [[TestEqualDictionaryObject alloc] initWithName:@"wahaha" age:@(1) hegiht:200];
    
    NSMutableDictionary *tempMDictionary = [NSMutableDictionary new];
    [tempMDictionary setObject:obj1 forKey:obj1];
    [tempMDictionary setObject:obj2 forKey:obj2];
    
    NSLog(@"count:%zi, values:%@, obj1:%@", tempMDictionary.count, tempMDictionary.allValues, tempMDictionary[obj1]);
    
//    NSMutableSet *mset = [NSMutableSet set];
//    [mset addObject:obj1];
//    [mset addObject:obj2];
    
//    BOOL equal = [obj1 isEqual:obj2];
//    NSLog(@"equal:%@",equal?@"相等":@"不相等");
    
    /*
     结果输出：
     count:2, values:(
         2,
         1
     ), obj1:(null)
     obj1 为 null，是因为 setObject:forKey 对 Key 做了 Copy 操作。其参数类型要求 Key 实现 NSCopying 协议。
     */
    
    [self end];
    
}



///MARK: - Equal

- (BOOL)isEqual:(id)other{

    NSLog(@"%@ call isEqual method", self);

    if (other == self) {
        return YES;
    } else if (![other isKindOfClass:self.class]) {
        return NO;
    } else {
        return [self isEqualToObject:other];
    }
}


- (BOOL)isEqualToObject:(TestEqualDictionaryObject *)other{
    if (other == nil) {
        return NO;
    }

    BOOL equalName = (self.name != nil && other.name != nil && [self.name isEqualToString:other.name]);
    BOOL equalAge = (self.age != nil && other.age != nil && [self.age isEqualToNumber:other.age]);
    BOOL equalHeight = self.height == other.height;

    return equalName && equalAge && equalHeight;

}


- (NSUInteger)hash{
    NSUInteger hash = self.name.hash ^ self.age.hash ^ self.height;
    NSLog(@"%@ call hash method:%zi", self, hash);
    return hash;
}


@end
