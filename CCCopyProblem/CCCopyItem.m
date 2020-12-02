//
//  CCCopyItem.m
//  CCCopyProblem
//
//  Created by CC on 2020/12/2.
//  Copyright © 2020 - now youhua deng (deng you hua | CC) <ccworld1000@gmail.com>. All rights reserved.
//

#import "CCCopyItem.h"

@implementation CCCopyItem

- (id)copyWithZone:(nullable NSZone *)zone {
    CCCopyItem *item = [CCCopyItem allocWithZone:zone];
    NSLog(@"\t--> copy item: %@", item);
    
    return item;
}

@end
