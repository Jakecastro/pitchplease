//
//  ViewController.m
//  PitchPlease
//
//  Created by Jake Castro on 11/2/15.
//  Copyright © 2015 Jake Castro. All rights reserved.
//

#import "ViewController.h"
#import "PitchTableViewCell.h"
#import "PPCarouselCollectionViewLayout.h"
#import "Pitch.h"
#import "SpotifyCollectionViewCell.h"


@interface ViewController () <UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *SpotifyCollectionView;
@property (weak, nonatomic) IBOutlet UITableView *PitchTableView;
@property NSMutableArray *spotifyPlaylistsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"Pitch Please";

    self.spotifyPlaylistsArray = [NSMutableArray new];
    [self.spotifyPlaylistsArray addObject:@"1"];
    [self.spotifyPlaylistsArray addObject:@"2"];
    [self.spotifyPlaylistsArray addObject:@"3"];
    [self.spotifyPlaylistsArray addObject:@"4"];
    [self.spotifyPlaylistsArray addObject:@"5"];
    [self.spotifyPlaylistsArray addObject:@"6"];
    [self.spotifyPlaylistsArray addObject:@"7"];



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.spotifyPlaylistsArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    SpotifyCollectionViewCell *cell = (SpotifyCollectionViewCell *) [collectionView dequeueReusableCellWithReuseIdentifier:@"SpotifyCell" forIndexPath:indexPath];

    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PitchTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PitchCell" forIndexPath:indexPath];

    return cell;
}

- (IBAction)onSearchButtonTapped:(UIBarButtonItem *)sender {
}

- (IBAction)onMenuButtonTapped:(UIBarButtonItem *)sender {
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}

@end






