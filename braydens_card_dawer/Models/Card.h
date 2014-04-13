//
//  Card.h
//  braydens_card_dawer
//
//  Created by Brayden Cleary on 4/13/14.
//  Copyright (c) 2014 braydencleary. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
