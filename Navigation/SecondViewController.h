//
//  SecondViewController.h
//  Navigation
//
//  Created by user148840 on 2/1/19.
//  Copyright © 2019 user148840. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
- (IBAction)alert:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *getdata;
@property (strong, nonatomic) NSString *receive;
@end

NS_ASSUME_NONNULL_END
