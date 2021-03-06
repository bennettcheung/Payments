//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Bennett on 2018-08-03.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"Amazon processed amount $%lu", amount);
}

- (BOOL)canProcessPayment {
    if (arc4random_uniform(2) == 1)
        return YES;
    return NO;
}
@end
