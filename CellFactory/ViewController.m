//
//  ViewController.m
//  CellFactory
//
//  Created by fred on 12-8-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "FCellFactory.h"
#import "RedCell.h"
#import "BlueCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FCell *cell = nil;
    
    if ([indexPath row] % 2) {
        cell = (RedCell *)[tableView dequeueReusableCellWithIdentifier:@"RedCellIdentifier"];
        if (cell == nil) {
            cell = [FCellFactory creatCell:@"RedCell"
                            dictionaryData:[NSDictionary dictionaryWithObject:@"i am red" forKey:@"color"] 
                                 indexPath:indexPath];
        }
    } else {
        cell = (BlueCell *)[tableView dequeueReusableCellWithIdentifier:@"BlueCellIdentifier"];
        if (cell == nil) {
            cell = [FCellFactory creatCell:@"BlueCell" 
                            dictionaryData:[NSDictionary dictionaryWithObject:@"i am blue" forKey:@"color"] 
                                 indexPath:indexPath];
        }    
    }
    
    return cell;
}

@end
