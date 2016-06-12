//
//  Science.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "Science.h"
#import "tutorList.h"

@interface Science ()

@end

@implementation Science

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

- (IBAction)chemistry:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)biology:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)physics:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)environmental:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)astronomy:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

@end
