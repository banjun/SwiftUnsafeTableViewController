//
//  UnsafeTableViewController.m
//  UnsafeTableViewController
//
//  Created by BAN Jun on 2015/03/02.
//  Copyright (c) 2015年 codefirst. All rights reserved.
//

#import "UnsafeTableViewController.h"

@implementation UnsafeTableViewController

- (instancetype)initWithStyle1:(UITableViewStyle)style;
{
    // Unsafe: declared implicitly (as convenience), implemented as convenience
    // => ViewController.swift: 11: 7: fatal error: use of unimplemented initializer 'init(nibName:bundle:)' for class 'UnsafeTableViewController.ViewController'
    if (self = [self initWithNibName:nil bundle:nil]) {
        self.view = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    }
    return self;
    
}

- (instancetype)initWithStyle2:(UITableViewStyle)style;
{
    // incorrect but safe?: declared implicitly (as convenience), implemented as designated
    if (self = [super initWithNibName:nil bundle:nil]) {
        self.view = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    }
    return self;
}

- (instancetype)initWithStyle3:(UITableViewStyle)style;
{
    // incorrect but safe?: declared as designated, implemented as convenience
    if (self = [self initWithNibName:nil bundle:nil]) {
        self.view = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    }
    return self;
}

- (instancetype)initWithStyle4:(UITableViewStyle)style;
{
    // Correct: declared as designated, implemented as designated
    if (self = [super initWithNibName:nil bundle:nil]) {
        self.view = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    }
    return self;
}

- (UITableView *)tableView {
    return (UITableView *)self.view;
}

@end
