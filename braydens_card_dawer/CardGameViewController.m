//
//  CardGameViewController.m
//  braydens_card_dawer
//
//  Created by Brayden Cleary on 4/13/14.
//  Copyright (c) 2014 braydencleary. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation CardGameViewController

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];

}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle  length] ){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:(UIControlStateNormal)];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:(UIControlStateNormal)];
        [sender setTitle:@"A♥︎" forState:UIControlStateNormal];
    }
    self.flipCount ++;
    
}


@end
