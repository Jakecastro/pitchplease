//
//  SearchViewController.m
//  PitchPlease
//
//  Created by Jake Castro on 11/2/15.
//  Copyright © 2015 Jake Castro. All rights reserved.
//

#import "SearchViewController.h"
#import "Pitch.h"
#import "SearchTableViewCell.h"

@interface SearchViewController () <UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SearchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SearchCell" forIndexPath:indexPath];

    return cell;
}

- (IBAction)onDoneButtonTapped:(UIBarButtonItem *)sender {
}

- (IBAction)onMenuButtonTapped:(UIBarButtonItem *)sender {
}

@end
