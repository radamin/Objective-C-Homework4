//
//  main.m
//  Homework4
//
//  Created by Рамазан Даминов on 12.03.2024.
//

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [[Robot alloc] init];
        
        [robot run:^Direction {
            return up;
        }];
        
        [robot run:^Direction {
            return right;
        }];
    }
    return 0;
}
