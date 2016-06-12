//
//  DataCollection.m
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import "DataCollection.h"

@interface DataCollection ()

@end

@implementation DataCollection

@synthesize languageArtsButton, mathematicsButton, historyButton, technologyButton, scienceButton, worldLanguage;

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
- (IBAction)languageArts:(id)sender {
    if([languageArtsButton.backgroundColor isEqual: [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1]]) {
        languageArtsButton.backgroundColor = [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:0];
        [languageArtsButton setTitleColor:[UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1] forState:UIControlStateNormal];
    }
    else {
        languageArtsButton.backgroundColor = [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1];
        [languageArtsButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
}
- (IBAction)history:(id)sender {
    if([historyButton.backgroundColor isEqual: [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1]]) {
        historyButton.backgroundColor = [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:0];
        [historyButton setTitleColor:[UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1] forState:UIControlStateNormal];
    }
    else {
        historyButton.backgroundColor = [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1];
        [historyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
}
- (IBAction)science:(id)sender {
    if([scienceButton.backgroundColor isEqual: [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1]]) {
        scienceButton.backgroundColor = [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:0];
        [scienceButton setTitleColor:[UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1] forState:UIControlStateNormal];
    }
    else {
        scienceButton.backgroundColor = [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1];
        [scienceButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
}
- (IBAction)mathematics:(id)sender {
    if([mathematicsButton.backgroundColor isEqual: [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1]]) {
        mathematicsButton.backgroundColor = [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:0];
        [mathematicsButton setTitleColor:[UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1] forState:UIControlStateNormal];
    }
    else {
        mathematicsButton.backgroundColor = [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1];
        [mathematicsButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
}
- (IBAction)technology:(id)sender {
    if([technologyButton.backgroundColor isEqual: [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1]]) {
        technologyButton.backgroundColor = [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:0];
        [technologyButton setTitleColor:[UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1] forState:UIControlStateNormal];
    }
    else {
        technologyButton.backgroundColor = [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1];
        [technologyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
}
- (IBAction)worldLanguage:(id)sender {
    if([worldLanguage.backgroundColor isEqual: [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1]]) {
        worldLanguage.backgroundColor = [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:0];
        [worldLanguage setTitleColor:[UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1] forState:UIControlStateNormal];
    }
    else {
        worldLanguage.backgroundColor = [UIColor colorWithRed:3/255.0 green:121/255.0 blue:251/255.0 alpha:1];
        [worldLanguage setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
}

@end
