//
//  PaymentGateway.m
//  Payments
//
//  Created by Bennett on 2018-08-03.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)amount{
    if ([self.paymentDelegate canProcessPayment])
    {
        [self.paymentDelegate processPaymentAmount:amount];
    }
    else{
        NSLog(@"Can't process payment!!");
    }
}
@end
