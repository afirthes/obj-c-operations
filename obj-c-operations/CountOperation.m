//
//  ViewController.m
//  obj-c-operations
//
//  Created by sehio on 11.07.2021.
//

#import "CountOperation.h"

@implementation CountOperation

- (id)init:(NumberWrapper *)number withBar:(UIProgressView *)bar{
    self = [super init];
    if (self) {
        _number = number;
        _bar = bar;
    }
    return self;
}

- (void) main
{
    @autoreleasepool {
        long i = 0;
        long j = 0;
        long c = 0;
        for (i = 0; i < 11; i++) {
            
            for(j = 0; j < 100000; j++) {
                [self.number increment];
                c++;
            }
            
            float progress = (float) i / 10.0f;
            //printf("%f",progress);
            sleep(1);
            dispatch_async(dispatch_get_main_queue(), ^{
                self.bar.progress = progress;
            });
        }
        printf("\n%ld",c);
        
    }
}

@end
