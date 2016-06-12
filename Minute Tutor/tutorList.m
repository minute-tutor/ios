//
//  tutorList.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/12/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "tutorList.h"
#import "tutorDescription.h"

@interface tutorList ()

@end

@implementation tutorList

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)callTutor:(id)sender {
    tutorDescription *viewController = [[tutorDescription alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

@end
