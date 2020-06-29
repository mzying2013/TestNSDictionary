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
    
    [self end];
    
}


- (NSUInteger)hash{
    NSUInteger hash = (NSUInteger)self>>4;
    NSLog(@"%@<%p> hash %zi", NSStringFromClass(self.class), self, hash);
    return hash;
}



@end
