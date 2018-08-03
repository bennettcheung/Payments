//
//  StripePaymentService.m
//  Payments
//
//  Created by Bennett on 2018-08-03.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
-(void)processPaymentAmount:(NSInteger)amount{
        NSLog(@"Stripe processed amount $%lu", amount);
}

- (BOOL)canProcessPayment {
    if (arc4random_uniform(2) == 1)
        return YES;
    return NO;
}
@end
