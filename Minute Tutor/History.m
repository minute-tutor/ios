//
//  History.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "History.h"
#import "tutorList.h"

@interface History ()

@end

@implementation History

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)world:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)us:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)european:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)contemporary:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)economics:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

@end
