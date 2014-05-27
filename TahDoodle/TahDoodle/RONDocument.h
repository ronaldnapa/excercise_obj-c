//
//  RONDocument.h
//  TahDoodle
//
//  Created by Ronald Napa on 5/27/14.
//  Copyright (c) 2014 Ronald Napa. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RONDocument : NSDocument <NSTableViewDataSource>
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
    
}
-(IBAction)createNewItem:(id)sender;
@end
