//
//  DataCollection.h
//  Minute Tutor
//
//  Created by Paran Sonthalia on 6/11/16.
//  Copyright © 2016 Mango Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataCollection : UIViewController {
    
}
@property (strong, nonatomic) IBOutlet UIButton *languageArtsButton;
@property (strong, nonatomic) IBOutlet UIButton *mathematicsButton;
@property (strong, nonatomic) IBOutlet UIButton *historyButton;
@property (strong, nonatomic) IBOutlet UIButton *technologyButton;
@property (strong, nonatomic) IBOutlet UIButton *scienceButton;
@property (strong, nonatomic) IBOutlet UIButton *worldLanguage;

@property (strong, nonatomic) IBOutlet UITextField *payPal;
@property (strong, nonatomic) IBOutlet UITextField *skype;
@property (strong, nonatomic) IBOutlet UITextField *rate;

@end
