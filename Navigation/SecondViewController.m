//
//  SecondViewController.m
//  Navigation
//
//  Created by user148840 on 2/1/19.
//  Copyright © 2019 user148840. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.getdata.text=_receive;
    // Do any additional setup after loading the view.
    [self myalert];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)alert:(id)sender {
 
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"Logout"
                                     message:@"Are You Sure Want to Logout!"
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        //Add Buttons
        
        UIAlertAction* yesButton = [UIAlertAction
                                    actionWithTitle:@"Yes"
                                    style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction * action) {
                                        //Handle your yes please button action here
                                       // [self clearAllData];
                                        
                                         ViewController *ViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
                                       [self presentViewController:ViewController animated:YES completion:nil];
                                    }];
        
        UIAlertAction* noButton = [UIAlertAction
                                   actionWithTitle:@"Feedback"
                                   style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction * action) {
                                       //Handle no, thanks button
                                   }];
    UIAlertAction* Cancel = [UIAlertAction
                               actionWithTitle:@"Cancel"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   //Handle no, thanks button
                               }];
 
        
        //Add your buttons to alert controller
        
        [alert addAction:yesButton];
        [alert addAction:noButton];
     [alert addAction: Cancel];
        
        [self presentViewController:alert animated:YES completion:nil];
    }

-(void)myalert{
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle: @"Login"message: @"Input username and password"preferredStyle:UIAlertControllerStyleAlert];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"name";
        textField.textColor = [UIColor blueColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        textField.borderStyle = UITextBorderStyleRoundedRect;
    }];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"password";
        textField.textColor = [UIColor blueColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        textField.borderStyle = UITextBorderStyleRoundedRect;
        textField.secureTextEntry = YES;
    }];
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSArray * textfields = alertController.textFields;
        UITextField * namefield = textfields[0];
        UITextField * passwordfiled = textfields[1];
        NSLog(@"%@:%@",namefield.text,passwordfiled.text);
        
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
}
                                    
@end
