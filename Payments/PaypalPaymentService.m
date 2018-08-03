//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Bennett on 2018-08-03.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"Paypal processed amount $%lu", amount);
}

- (BOOL)canProcessPayment {
    if (arc4random_uniform(2) == 1)
        return YES;
    return NO;
}

@end
