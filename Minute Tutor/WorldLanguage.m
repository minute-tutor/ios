//
//  WorldLanguage.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "WorldLanguage.h"
#import "tutorList.h"

@interface WorldLanguage ()

@end

@implementation WorldLanguage

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

- (IBAction)french:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)mandarin:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)spanish:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)japanese:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)hindi:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

@end
