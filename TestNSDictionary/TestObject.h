//
//  TestObject.h
//  TestNSDictionary
//
//  Created by Bill liu on 2020/5/30.
//  Copyright © 2020 Mzying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestBaseObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestObject : NSObject<NSCopying>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age;
@property (nonatomic, assign) NSUInteger height;

- (instancetype)initWithName:(NSString *)name age:(NSNumber *)age hegiht:(NSUInteger)height;

@end

NS_ASSUME_NONNULL_END
