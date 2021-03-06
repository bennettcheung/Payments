//
//  main.m
//  Payments
//
//  Created by Bennett on 2018-08-03.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int dollarValue = arc4random_uniform(900)+100;
        
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%i Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Applepay", dollarValue);
        
        char input[255];
        fgets(input, 255, stdin);
        

        int choice = atoi(input);
        
        PaymentGateway *gateway = [[PaymentGateway alloc]init];
        
        switch (choice) {
            case 1:
            {
                PaypalPaymentService *paypal = [[PaypalPaymentService alloc]init];
                gateway.paymentDelegate = paypal;
                break;
            }
            case 2:
            {
                StripePaymentService *stripe = [[StripePaymentService alloc]init];
                gateway.paymentDelegate = stripe;
                break;
            }
            case 3:
            {
                AmazonPaymentService *amazon = [[AmazonPaymentService alloc]init];
                gateway.paymentDelegate = amazon;
                break;
            }
            case 4:
            {
                ApplePaymentService *apple = [[ApplePaymentService alloc]init];
                gateway.paymentDelegate = apple;
                break;
            }
            default:
                break;
        }
        NSInteger nAmount = dollarValue;
        [gateway processPaymentAmount: nAmount];
        
    }
    return 0;
}
