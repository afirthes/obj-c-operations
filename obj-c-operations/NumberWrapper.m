//
//  NumberWrapper.m
//  obj-c-operations
//
//  Created by sehio on 11.07.2021.
//

#import "NumberWrapper.h"

@implementation NumberWrapper

- (id)init{
    self = [super init];
    if(self) {
        _number = 0;
    }
    return self;
}

- (void)increment {
    // Core feature - is we remove sync - answer will be wrong.
    @synchronized (self) {
        self.number += 1;
    }
}

@end
