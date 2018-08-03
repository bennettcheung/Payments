//
//  ApplePaymentService.m
//  Payments
//
//  Created by Bennett on 2018-08-03.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)processPaymentAmount:(NSInteger)amount {

    NSLog(@"Applepay processed amount $%lu", amount);
}

- (BOOL)canProcessPayment {
    if (arc4random_uniform(2) == 1)
        return YES;
    return NO;
}

@end
