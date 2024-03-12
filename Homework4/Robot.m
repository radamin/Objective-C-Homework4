//
//  Robot.m
//  Homework4
//
//  Created by Рамазан Даминов on 12.03.2024.
//

#import "Robot.h"

@implementation Robot

- (instancetype) initWithOrigin {
    self = [super init];
    if (self) {
        self.x = 0;
        self.y = 0;
    }
    NSLog(@"Robot's position: X=%f, Y=%f", self.x, self.y);
    return self;
}

- (void) run: (Direction (^) (void)) directionBlock {
    Direction direction = directionBlock();
    switch (direction) {
        case up:
            self.y++;
            break;
        case down:
            self.y--;
            break;
        case left:
            self.x--;
            break;
        case right:
            self.x++;
            break;
        default:
            NSLog(@"Wrong command");
            break;
    }
    NSLog(@"Robot's position: X=%f, Y=%f", self.x, self.y);
}

@end
