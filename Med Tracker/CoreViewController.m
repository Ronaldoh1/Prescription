//
//  CoreViewController.m
//  Med Tracker
//
//  Created by Ronald Hernandez on 10/25/15.
//  Copyright © 2015 Wahoo. All rights reserved.
//

#import "CoreViewController.h"

@interface CoreViewController ()

@end

@implementation CoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)cancelAndDismiss{

    [self dismissViewControllerAnimated:YES

                             completion:nil];

}

-(void)saveAndDismiss{

    [self dismissViewControllerAnimated:YES
                             completion:nil];

}
@end
