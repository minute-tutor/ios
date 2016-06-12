//
//  ViewController.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "ViewController.h"
#import "HomePage.h"
#import "LanguageArts.h"
#import "Mathematics.h"
#import "History.h"
#import "Technology.h"
#import "Science.h"
#import "WorldLanguage.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didTapSignOut:(id)sender {
    [[GIDSignIn sharedInstance] signOut];
}
- (IBAction)languageArts:(id)sender {
    LanguageArts *viewController = [[LanguageArts alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)mathematics:(id)sender {
    Mathematics *viewController = [[Mathematics alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)history:(id)sender {
    History *viewController = [[History alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)technology:(id)sender {
    Technology *viewController = [[Technology alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)science:(id)sender {
    Science *viewController = [[Science alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)worldLanguage:(id)sender {
    WorldLanguage *viewController = [[WorldLanguage alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
}

@end
