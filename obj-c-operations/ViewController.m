//
//  ViewController.m
//  obj-c-operations
//
//  Created by sehio on 11.07.2021.
//

#import "ViewController.h"
#import "CountOperation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.counter = [NumberWrapper new];
    self.countQueue = [NSOperationQueue new];
}


- (IBAction)pressedUPDATE:(id)sender {
    self.counterLabel.text = [NSString stringWithFormat:@"%ld", (long)self.counter.number];
}

- (void)updateBar:(NSNumber *)index withValue:(NSNumber *)value {
    int indx = [index intValue];
    float f = [value floatValue];
    UIProgressView *v = (UIProgressView *) self.progressBars[indx];
    v.progress += f;
}

- (IBAction)pressedSTOP:(id)sender {
}

- (IBAction)pressedSTART:(id)sender {
    for(int i=0; i<12; i++) {
        UIProgressView *v = (UIProgressView *) self.progressBars[i];
        CountOperation *countOp = [[CountOperation alloc] init:self.counter withBar:v];
        [self.countQueue addOperation:countOp];
    }
}
@end
