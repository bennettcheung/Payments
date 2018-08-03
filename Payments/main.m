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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int dollarValue = arc4random_uniform(900)+100;
        
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%i Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", dollarValue);
        
        char input[255];
        fgets(input, 255, stdin);
        

        int choice = atoi(input);
        
        PaymentGateway *gateway = [[PaymentGateway alloc]init];
        
        switch (choice) {
            case 1:
            {
                PaypalPaymentService *paypal = [[PaypalPaymentService alloc]init];
                gateway.paymentDelegate = paypal;
                NSInteger nAmount = dollarValue;
                [gateway processPaymentAmount: nAmount];
                break;
            }
            case 2:
            {
                StripePaymentService *stripe = [[StripePaymentService alloc]init];
                gateway.paymentDelegate = stripe;
                NSInteger nAmount = dollarValue;
                [gateway processPaymentAmount: nAmount];
                break;
            }
            case 3:
            {
                AmazonPaymentService *amazon = [[AmazonPaymentService alloc]init];
                gateway.paymentDelegate = amazon;
                NSInteger nAmount = dollarValue;
                [gateway processPaymentAmount: nAmount];
                break;
            }
            
            default:
                break;
        }

        
    }
    return 0;
}
