//
//  Robot.h
//  Homework4
//
//  Created by Рамазан Даминов on 12.03.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, Direction) {
    up,
    down,
    left,
    right
};

@interface Robot : NSObject

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;

//@property Direction direction;

- (void) run: (Direction (^) (void)) directionBlock;

@end

NS_ASSUME_NONNULL_END
