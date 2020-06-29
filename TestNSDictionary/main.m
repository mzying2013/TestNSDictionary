//
//  main.m
//  TestNSDictionary
//
//  Created by Bill liu on 2020/5/29.
//  Copyright © 2020 Mzying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
#import "TestObject.h"

#import "TestDefaultDictionaryObject.h"
#import "TestEqualDictionaryObject.h"
#import "TestEqualArrayObject.h"
#import "TestEqualSetObject.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //IndexPath
        
//        NSIndexPath *indexPath1 = [NSIndexPath indexPathForItem:0 inSection:1];
//        NSIndexPath *indexPath2 = [NSIndexPath indexPathForItem:0 inSection:1];
//
//        NSMutableArray *testMArray = [NSMutableArray array];
//        [testMArray addObject:indexPath1];
//
//        BOOL contain = [testMArray containsObject:indexPath2];
//        BOOL equal = [indexPath1 isEqual:indexPath2];
//        NSLog(@"%@ %@",contain?@"包含":@"不包含",equal?@"相等":@"不相等");
        
        
//        TestObject *ob1 = [[TestObject alloc] initWithName:@"wahaha1" age:@(1) hegiht:1];
//        TestObject *ob2 = [[TestObject alloc] initWithName:@"wahaha2" age:@(2) hegiht:2];
//        TestObject *ob3 = [[TestObject alloc] initWithName:@"wahaha3" age:@(3) hegiht:3];
//        TestObject *ob4 = [[TestObject alloc] initWithName:@"wahaha4" age:@(4) hegiht:4];
//        TestObject *obC = [[TestObject alloc] initWithName:@"wahaha4" age:@(4) hegiht:4];
//
//        NSArray *obList = @[ob1, ob2, ob3, ob4];
//        NSArray *obList2 = @[ob1, ob2, ob3, ob4];
        
        
        
//        BOOL contain = [obList containsObject:obC];
//        NSSet *set = [NSSet setWithObjects:ob4,obC, nil];
//        NSMutableSet *mset = [NSMutableSet set];
//        [mset addObject:ob4];
//        [mset addObject:obC];
//        [mset addObject:ob3];
//
//        NSLog(@"ob4:%@ obC:%@", ob4, obC);
////        NSLog(@"------------------ mset end");
//
////        NSLog(@"%@", contain?@"包含":@"不包含");
////        NSLog(@"list %@", [obList isEqualToArray:obList2]?@"相等":@"不相等");
//        NSLog(@"%@", [ob4 isEqual:obC]?@"equal":@"not equal");
//        [ob4 hash];
        
//        NSLog(@"set:%@", set);
//        NSLog(@"mset:%@ count:%zi", mset,mset.count);
        
//        NSLog(@"obj:%zi hash:%zi", (NSUInteger)ob4, [ob4 hash]);
        
//        NSColor *color1 = [NSColor blueColor];\
//
//        NSLog(@"color1:%p color2:%p", color1, color2);
        
//        NSLog(@"-----Dictionary Begin---------");
//
//        NSMutableDictionary *tempMDictionary = [NSMutableDictionary new];
//        [tempMDictionary setObject:@"1" forKey:ob4];
//        [tempMDictionary setObject:@"2" forKey:obC];
//
//        NSLog(@"%@ %@", tempMDictionary,tempMDictionary[obC]);
//
//        NSLog(@"-----Dictionary End---------");
        
        
        
//        [TestDefaultDictionaryObject run];
        
//        [TestBaseObject run];
//        [TestEqualArrayObject run];
        
        for (NSUInteger index = 0; index< 20; index ++) {
            [TestEqualDictionaryObject run];
            [TestEqualSetObject run];
        }
    }
    return 0;
}
