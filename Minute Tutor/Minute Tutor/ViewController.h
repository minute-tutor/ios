//
//  ViewController.h
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Google/SignIn.h>
#import <Firebase/Firebase.h>

@interface ViewController : UIViewController <GIDSignInUIDelegate, UITableViewDelegate, UITableViewDataSource> {
    NSArray *tableData;
    
}
@property(weak, nonatomic) IBOutlet GIDSignInButton *signInButton;

@end

