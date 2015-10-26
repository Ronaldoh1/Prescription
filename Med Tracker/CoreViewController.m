//
//  CoreViewController.m
//  Med Tracker
//
//  Created by Ronald Hernandez on 10/25/15.
//  Copyright © 2015 Wahoo. All rights reserved.
//

#import "CoreViewController.h"
#import "AppDelegate.h" //to access core data nsmanage objects.


@interface CoreViewController ()
//need a referenced to the Manage Object Context.
@property (nonatomic, strong)NSManagedObjectContext *managedObjectContext;

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

//When you cancel, you want to roll back the objects that you created by using the managedObjectContext method rollback.
-(void)cancelAndDismiss{


    [self.managedObjectContext rollback];
    [self dismissViewControllerAnimated:YES

                             completion:nil];

}

-(void)saveAndDismiss{

    NSError *error = nil;
    if([self.managedObjectContext hasChanges]){
        if (![self.managedObjectContext save:&error]) {
            NSLog(@"Saving Failed %@", [error localizedDescription]);
        } else {
            NSLog(@"Saving Succeeded");
        }
    }

    [self dismissViewControllerAnimated:YES
                             completion:nil];

}

//This method returns an NSManagedObjectContext. It allows us to refer to our managedobjectContext - it allows to simple use self.mangedObjectContext

-(NSManagedObjectContext *)managedObjectContext{

    return [(AppDelegate *)[[UIApplication sharedApplication]delegate] managedObjectContext];

}
@end
