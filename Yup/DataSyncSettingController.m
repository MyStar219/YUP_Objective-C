//
//  DataSyncSettingController.m
//  Yup
//
//  Created by Abdul Saleem.S on 04/09/17.
//  Copyright © 2017 Sayka. All rights reserved.
//

#import "DataSyncSettingController.h"

@interface DataSyncSettingController ()

@end

@implementation DataSyncSettingController {
    NSArray *intervalOptions;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    intervalOptions = @[@"15 minutes", @"30 minutes", @"1 hour", @"3 hours", @"6 hours", @"Never"];
    self.syncIntervalPickerView.dataSource = self;
    self.syncIntervalPickerView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [intervalOptions count];//this will tell the picker how many rows it has - in this case, the size of your loaded
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [intervalOptions objectAtIndex:row];//assuming the array contains strings..
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
