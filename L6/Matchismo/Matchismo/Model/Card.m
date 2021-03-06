//
//  Card.m
//  Matchismo
//
//  Created by Justin Lee on 6/18/16.
//  Copyright © 2016 Justin Lee. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (NSUInteger)numOfCardsToMatch
{
	if (!_numOfCardsToMatch) {
		_numOfCardsToMatch = 2;
	}
	return _numOfCardsToMatch;
}

- (int)match:(NSArray *)otherCards
{
	int score = 0;
	
	for (Card *card in otherCards) {
		if([card.contents isEqualToString:self.contents]) {
			score = 1;
		}
	}
	
	return score;
}

@end
