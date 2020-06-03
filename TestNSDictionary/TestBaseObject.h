//
//  TestBaseObject.h
//  TestNSDictionary
//
//  Created by Bill liu on 2020/6/2.
//  Copyright © 2020 Mzying. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestBaseObject : NSObject<NSCopying>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age;
@property (nonatomic, assign) NSUInteger height;

- (instancetype)initWithName:(NSString *)name age:(NSNumber *)age hegiht:(NSUInteger)height;

+ (void)begin;
+ (void)run;
+ (void)end;

@end

NS_ASSUME_NONNULL_END
