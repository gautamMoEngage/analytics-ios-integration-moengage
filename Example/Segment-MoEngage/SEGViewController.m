//
//  SEGViewController.m
//  Segment-MoEngage
//
//  Created by Prateek Srivastava on 11/24/2015.
//  Copyright (c) 2015 Prateek Srivastava. All rights reserved.
//

#import "SEGViewController.h"
#import <SEGAnalytics.h>
#import <SEGMoEngageIntegrationFactory.h>

@interface SEGViewController ()

@end


@implementation SEGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    [dict setObject:@27 forKey:@"age"];
    [dict setObject:@0 forKey:@"airtel_flag"];
    [dict setObject:@"abc" forKey:@"email"];
    
    [dict setObject:@"ZETGBKrrhrQt2wBBJ0" forKey:@"userId"];
    [dict setObject:@1 forKey:@"login_result"];
    [dict setObject:@0 forKey:@"pay_type"];
    [dict setObject:@YES forKey:@"perm_id"];
    [dict setObject:@"ZETGBKrrhrQt2wBBJ0" forKey:@"ID"];
    [dict setObject:@"Female" forKey:@"gender"];
    [dict setObject:@0 forKey:@"login_type"];
    
    [dict setObject:@"1988-11-21 00:00:00 +0000" forKey:@"dob"];
    [dict setObject:@"2017-08-28T15:25:02+0530" forKey:@"eros_bsb_expiry"];
    
    [dict setObject:@"" forKey:@"sony_subs"];
    
    
    NSLog(@"the dict is %@", dict);
    
    [[SEGAnalytics sharedAnalytics] track:@"login_reg_complete" properties:dict options:nil];
    
    [[SEGAnalytics sharedAnalytics] flush];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
