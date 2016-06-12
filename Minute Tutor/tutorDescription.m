//
//  tutorDescription.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/12/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "tutorDescription.h"
#import "Payments.h"

@interface tutorDescription ()

@end

@implementation tutorDescription

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)call:(id)sender {
    Payments *viewController = [[Payments alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
