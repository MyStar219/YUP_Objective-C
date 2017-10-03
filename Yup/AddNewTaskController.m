//
//  AddNewTaskController.m
//  Yup
//
//  Created by Abdul Saleem.S on 05/09/17.
//  Copyright © 2017 Sayka. All rights reserved.
//

#import "AddNewTaskController.h"

@interface AddNewTaskController ()

@end

@implementation AddNewTaskController {
    UIPickerView *pickerView;
    NSArray *sampleCategories;
    NSString *selectedCategory;
}

- (void)viewDidLoad {
    sampleCategories = @[@"General", @"Groceries", @"Meetings", @"Financial", @"Birthdays", @"Visits"];
    selectedCategory = sampleCategories[0];
    self.categoryText.text = selectedCategory;
    
    [super viewDidLoad];
    [self.categoryDropDown setUserInteractionEnabled:YES];
    
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dropDownTapped:)];
    [gesture setNumberOfTapsRequired:1];
    [self.categoryDropDown addGestureRecognizer:gesture];
}

- (void)dropDownTapped:(UIGestureRecognizer *)recognizer {
    [self showCategories];
}

- (void)showCategories {
    pickerView = [[UIPickerView alloc] init];
    pickerView.showsSelectionIndicator = YES;
    pickerView.dataSource = self;
    pickerView.delegate = self;
    
    UIToolbar *toolbar = [[UIToolbar alloc]init];
    toolbar.barStyle = UIBarStyleBlackTranslucent;
    [toolbar sizeToFit];
    
    UIBarButtonItem *flexibleSpaceLeft = [[UIBarButtonItem alloc]
                                          initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    UIBarButtonItem* doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done"
                                                                   style:UIBarButtonItemStyleDone target:self
                                                                  action:@selector(doneClicked:)];
    
    [toolbar setItems:[NSArray arrayWithObjects:flexibleSpaceLeft, doneButton, nil]];
    self.categoryText.inputView = pickerView;
    self.categoryText.inputAccessoryView = toolbar;
}

- (void)doneClicked:(id)sender {
    [self.categoryText resignFirstResponder];
    self.categoryText.text = selectedCategory;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [sampleCategories count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [sampleCategories objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    selectedCategory = [sampleCategories objectAtIndex:row];
}

@end
