//
//  ViewController.m
//  Navigation
//
//  Created by user148840 on 2/1/19.
//  Copyright © 2019 user148840. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Go"])
   {
    
       NSLog(@"prepareForSegue: %@", segue.identifier);
     
       SecondViewController *SecondView = segue.destinationViewController;
       
       SecondView.view.backgroundColor=UIColor.cyanColor;
     
     
    }
    if ([segue.identifier isEqualToString:@"Data"])
    {
        
        NSLog(@"prepareForSegue: %@", segue.identifier);
        
        SecondViewController *SecondView = segue.destinationViewController;
       
        
        SecondView.receive=_Label.text;
    
        
    }
}

- (IBAction)done:(id)sender {
   
}

- (IBAction)Cyan:(id)sender {
   //  [self performSegueWithIdentifier:@"Cyan" sender:sender];
}
@end
