//
//  DataSyncSettingController.h
//  Yup
//
//  Created by Abdul Saleem.S on 04/09/17.
//  Copyright © 2017 Sayka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataSyncSettingController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *syncIntervalPickerView;

@end
