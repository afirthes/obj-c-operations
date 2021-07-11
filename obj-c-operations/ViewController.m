//
//  ViewController.m
//  obj-c-operations
//
//  Created by sehio on 11.07.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.counter = [NumberWrapper new];
}


- (IBAction)pressedUPDATE:(id)sender {
    self.counterLabel.text = [NSString stringWithFormat:@"%ld", (long)self.counter.number];
    
    [self updateBar:@1 withValue:@0.2f];
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
}
@end
