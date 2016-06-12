//
//  LanguageArts.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "LanguageArts.h"
#import "tutorList.h"

@interface LanguageArts ()

@end

@implementation LanguageArts

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
- (IBAction)spelling:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)literature:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)rhetoric:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)grammar:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)vocabulary:(id)sender {
    tutorList *viewController = [[tutorList alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

@end
