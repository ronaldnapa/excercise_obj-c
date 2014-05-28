//
//  RONDocument.m
//  TahDoodle
//
//  Created by Ronald Napa on 5/27/14.
//  Copyright (c) 2014 Ronald Napa. All rights reserved.
//

#import "RONDocument.h"

@implementation RONDocument

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

#pragma mark - NSDocument Overrides

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"RONDocument";
}

#pragma mark - Actions

-(IBAction)createNewItem:(id)sender
{
    
    if(!todoItems){
        todoItems = [NSMutableArray array];
    }
    
    [todoItems addObject:@"New Item"];
    
    [itemTableView reloadData];
    
    [self updateChangeCount:NSChangeDone];
}

# pragma mark - Data Source Methods

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tv
{
    
    return [todoItems count];
}

-(id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    
    return [todoItems objectAtIndex:row];
}

-(void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    
    [todoItems replaceObjectAtIndex:row withObject:object];
    
    [self updateChangeCount:NSChangeDone];
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    
    if(!todoItems){
        todoItems = [NSMutableArray array];
    }
    
    NSData *data = [NSPropertyListSerialization dataWithPropertyList:todoItems format:NSPropertyListXMLFormat_v1_0 options:0 error:outError];
    
    return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    
    todoItems = [NSPropertyListSerialization propertyListWithData:data options:NSPropertyListMutableContainers format:NULL error:outError];
    
    return (todoItems != nil);
}

@end
