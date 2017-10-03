//
//  AddNewTaskController.h
//  Yup
//
//  Created by Abdul Saleem.S on 05/09/17.
//  Copyright © 2017 Sayka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddNewTaskController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIImageView *categoryDropDown;
@property (weak, nonatomic) IBOutlet UITextField *categoryText;

@end
