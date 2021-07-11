//
//  ViewController.m
//  obj-c-operations
//
//  Created by sehio on 11.07.2021.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NumberWrapper.h"

@interface CountOperation : NSOperation

- (id)init:(NumberWrapper *)number withBar:(UIProgressView *)bar;

@property (nonatomic, assign) int seconds;
@property (nonatomic, weak) NumberWrapper *number;
@property (nonatomic, weak) UIProgressView *bar;

@end
