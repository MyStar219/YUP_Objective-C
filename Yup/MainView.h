//
//  MainView.h
//  Yup
//
//  Created by Abdul Saleem.S on 01/09/17.
//  Copyright © 2017 Sayka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainView : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UITabBarItem *tabToday;
@property (weak, nonatomic) IBOutlet UITabBarItem *tabLater;
@property (weak, nonatomic) IBOutlet UITabBarItem *tabCategories;
@property (weak, nonatomic) IBOutlet UINavigationItem *navig;


@end
