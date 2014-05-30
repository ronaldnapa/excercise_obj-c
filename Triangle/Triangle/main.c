//
//  main.c
//  Triangle
//
//  Created by Ronald Napa on 5/30/14.
//  Copyright (c) 2014 Ronald Napa. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angleA, float angleB)
{
    float lastAngle = 180 - (angleA + angleB);
    
    return lastAngle;
    
}

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    
    printf("The third angle is %.2f \n", angleC);
    
    return 0;
}

