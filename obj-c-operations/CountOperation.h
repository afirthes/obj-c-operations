//
//  ViewController.m
//  obj-c-operations
//
//  Created by sehio on 11.07.2021.
//
#import <Foundation/Foundation.h>
#import "NumberWrapper.h"

@interface CountOperation : NSOperation

- (id)init:(NSNumber *)number;

@property (nonatomic, assign) int seconds;
@property (nonatomic, weak) NumberWrapper *number;

@end
