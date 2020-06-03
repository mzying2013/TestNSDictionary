//
//  TestDefaultDictionaryObject.m
//  TestNSDictionary
//
//  Created by Bill liu on 2020/6/2.
//  Copyright © 2020 Mzying. All rights reserved.
//

#import "TestDefaultDictionaryObject.h"

@implementation TestDefaultDictionaryObject


///MARK: - Override Method

+ (void)run{
    
    [self begin];
    
    TestDefaultDictionaryObject *obj1 = [[self alloc] initWithName:@"wahaha" age:@(1) hegiht:200];
    TestDefaultDictionaryObject *obj2 = [[self alloc] initWithName:@"wahaha" age:@(1) hegiht:200];
    
    NSMutableDictionary *tempMDictionary = [NSMutableDictionary new];
    [tempMDictionary setObject:@"1" forKey:obj1];
    [tempMDictionary setObject:@"2" forKey:obj2];
    
    NSLog(@"count:%zi, values:%@, obj1:%@", tempMDictionary.count, tempMDictionary.allValues, tempMDictionary[obj1]);
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



@end
