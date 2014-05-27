//
//  RONAppDelegate.h
//  iTahDoodle
//
//  Created by Ronald Napa on 5/27/14.
//  Copyright (c) 2014 Ronald Napa. All rights reserved.
//

#import <UIKit/UIKit.h>


NSString *docPath(void);
@interface RONAppDelegate : UIResponder <UIApplicationDelegate,UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *insertButton;
    
    NSMutableArray *tasks;
}

-(void)addTask:(id)sender;
@property (strong, nonatomic) UIWindow *window;

@end
