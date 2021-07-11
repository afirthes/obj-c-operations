//
//  NumberWrapper.h
//  obj-c-operations
//
//  Created by sehio on 11.07.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NumberWrapper : NSObject

@property (assign, nonatomic) NSInteger number;

- (void)increment;

@end

NS_ASSUME_NONNULL_END
