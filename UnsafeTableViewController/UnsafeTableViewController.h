//
//  UnsafeTableViewController.h
//  UnsafeTableViewController
//
//  Created by BAN Jun on 2015/03/02.
//  Copyright (c) 2015年 codefirst. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UnsafeTableViewController : UIViewController

// comment or uncomment NS_DESIGNATED_INITIALIZER below.
//
//      If you use the NS_DESIGNATED_INITIALIZER macro in your class, you need to mark all of your designated initializers with this macro. All other initializers will be considered to be convenience initializers.
//      https://developer.apple.com/library/ios/releasenotes/ObjectiveC/ModernizationObjC/AdoptingModernObjective-C/AdoptingModernObjective-C.html

- (instancetype)initWithStyle1:(UITableViewStyle)style;
- (instancetype)initWithStyle2:(UITableViewStyle)style;
//- (instancetype)initWithStyle3:(UITableViewStyle)style NS_DESIGNATED_INITIALIZER;
//- (instancetype)initWithStyle4:(UITableViewStyle)style NS_DESIGNATED_INITIALIZER;

@property (nonatomic, readonly) UITableView *tableView;

@end
