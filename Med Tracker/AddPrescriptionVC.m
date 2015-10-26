//
//  AddPrescriptionVC.m
//  Med Tracker
//
//  Created by Ronald Hernandez on 10/25/15.
//  Copyright © 2015 Wahoo. All rights reserved.
//

#import "AddPrescriptionVC.h"

@interface AddPrescriptionVC ()
@property (weak, nonatomic) IBOutlet UITextField *prescriptionName;
@property (weak, nonatomic) IBOutlet UITextField *prescriptionInstruction;

@end

@implementation AddPrescriptionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onCancelButtonTapped:(UIBarButtonItem *)sender {
    [super cancelAndDismiss];


}
- (IBAction)onSaveButtonTapped:(UIBarButtonItem *)sender {
    [super saveAndDismiss];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
