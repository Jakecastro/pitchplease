//
//  SpotifyCollectionViewCell.h
//  PitchPlease
//
//  Created by Jake Castro on 11/2/15.
//  Copyright © 2015 Jake Castro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpotifyCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *playlistArtWork;
@property (weak, nonatomic) IBOutlet UILabel *playlistLabel;

@end
