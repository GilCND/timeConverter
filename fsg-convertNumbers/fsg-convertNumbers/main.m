/*
    main.m
    fsg-convertNumbers
 
    Created by w0441691 on 2021-02-04.
    Objective:
    Write an objective-c class called MyTime that stores a field called minutes. Within the main method, have the user enter the time in minutes (using scanf) and store it. Display the entered value as whole hours and minutes (i.e. 90 minutes is 1 hour and 30 minutes).
    Copyright © 2021 ca.nscc. All rights reserved.
*/

#import <Foundation/Foundation.h>



@interface MyTime: NSObject
-(int) calculateMinutes: (int) i;
-(int) calculateHours: (int) i;
@end

@implementation MyTime {
    double minutes;
    int hours;
}
-(int) calculateMinutes:(int)i {
    minutes = i;
    hours = i/60;
    minutes = (((minutes/60) - hours)*60);
    return minutes;
}
-(int) calculateHours:(int)i {
    minutes = i;
    hours = minutes/60;
    return hours;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Please insert the number of minutes");
        int userInput;
        scanf("%i", &userInput);
        fflush(stdin);
        MyTime *myTime = [[MyTime alloc] init];
        
        NSLog(@" It's %i hour(s) and %d minute(s)",
            [myTime calculateHours: userInput], [myTime calculateMinutes: userInput]);
    }
    return 0;
}
