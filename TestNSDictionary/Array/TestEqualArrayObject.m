//
//  TestEqualArrayObject.m
//  TestNSDictionary
//
//  Created by Bill liu on 2020/6/3.
//  Copyright © 2020 Mzying. All rights reserved.
//

#import "TestEqualArrayObject.h"

@implementation TestEqualArrayObject


+ (void)run{
    
    [self begin];
    
    TestEqualArrayObject *obj1 = [[TestEqualArrayObject alloc] initWithName:@"wa1" age:@(1) hegiht:1];
    TestEqualArrayObject *obj2 = [[TestEqualArrayObject alloc] initWithName:@"wa2" age:@(2) hegiht:2];
    TestEqualArrayObject *obj3 = [[TestEqualArrayObject alloc] initWithName:@"wa3" age:@(3) hegiht:3];
    
    TestEqualArrayObject *obj4 = [[TestEqualArrayObject alloc] initWithName:@"wa1" age:@(1) hegiht:1];
    TestEqualArrayObject *obj5 = [[TestEqualArrayObject alloc] initWithName:@"wa2" age:@(2) hegiht:2];
    TestEqualArrayObject *obj6 = [[TestEqualArrayObject alloc] initWithName:@"wa3" age:@(3) hegiht:3];
    
    TestEqualArrayObject *obj7 = [[TestEqualArrayObject alloc] initWithName:@"wa1" age:@(1) hegiht:1];
    TestEqualArrayObject *obj8 = [[TestEqualArrayObject alloc] initWithName:@"wa2" age:@(2) hegiht:2];
    TestEqualArrayObject *obj9 = [[TestEqualArrayObject alloc] initWithName:@"wa3" age:@(3) hegiht:3];
    
    NSArray *array1 = @[obj1, obj2, obj3];
    NSArray *array2 = @[obj4, obj5, obj6];
    NSArray *array3 = @[obj7, obj8, obj9];
    
    NSArray *containArray1 = @[array1, array2];
    BOOL contain = [containArray1 containsObject:array3];
    
    BOOL isEqualToArray = [array1 isEqualToArray:array2];
    NSLog(@"isEqualToArray:%@",isEqualToArray?@"YES":@"NO");
    NSLog(@"containsObject:%@", contain?@"包含":@"不包含");
    
    
    [self end];
    
}


@end
