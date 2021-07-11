//
//  ViewController.h
//  obj-c-operations
//
//  Created by sehio on 11.07.2021.
//

#import <UIKit/UIKit.h>
#import "NumberWrapper.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIProgressView) NSArray *progressBars;
- (IBAction)pressedSTART:(id)sender;
- (IBAction)pressedSTOP:(id)sender;
- (IBAction)pressedUPDATE:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *counterLabel;
@property (strong, nonatomic) NSOperationQueue *countQueue;

@property (strong, nonatomic) NumberWrapper *counter;

- (void)updateBar:(NSNumber *)index withValue:(NSNumber *)value;



@end

