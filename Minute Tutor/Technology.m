//
//  Technology.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "Technology.h"
#import "tutorList.h"

@interface Technology ()

@end

@implementation Technology

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

- (IBAction)web:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)java:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)networking:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)hardware:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)ai:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

@end
