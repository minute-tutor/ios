//
//  Payments.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/12/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "Payments.h"

@interface Payments ()

@end

@implementation Payments

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)call:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"skype:davidsillman?call&video=true"]];
}

@end
