//
//  ViewController.m
//  obj-c-operations
//
//  Created by sehio on 11.07.2021.
//

#import "CountOperation.h"

@implementation CountOperation

- (id)init:(NumberWrapper *)number {
    self = [super init];
    if (self) {
        _number = number;
    }
    return self;
}

- (void) main
{
    @autoreleasepool {
        for (int i = 0; i < 1000; i++) {
            [self.number increment];
        }
    }
}

@end
