//
//  TestEqualSetObject.m
//  TestNSDictionary
//
//  Created by Bill liu on 2020/6/29.
//  Copyright © 2020 Mzying. All rights reserved.
//

#import "TestEqualSetObject.h"

@implementation TestEqualSetObject

///MARK: - Override Method

+ (void)run{
    
    [self begin];
    
    TestEqualSetObject *obj1 = [[self alloc] initWithName:@"wahaha" age:@(1) hegiht:200];
    TestEqualSetObject *obj2 = [[self alloc] initWithName:@"wahaha" age:@(1) hegiht:200];
    
    NSMutableSet *mSet = [NSMutableSet set];
    [mSet addObject:obj1];
    [mSet addObject:obj2];
    
    NSLog(@"count:%zi, values:%@, obj1:%@", mSet.count, mSet.allObjects, [mSet anyObject]);
    
    [self end];
    
}


- (NSUInteger)hash{
    NSUInteger hash = (NSUInteger)self>>4;
    NSLog(@"%@ hash %zi", NSStringFromClass(self.class), hash);
    return hash;
}




@end
