//
//  HomePage.h
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Google/SignIn.h>

@interface HomePage : UIViewController <GIDSignInUIDelegate> {
    
}
@property(weak, nonatomic) IBOutlet GIDSignInButton *signInButton;

@end
