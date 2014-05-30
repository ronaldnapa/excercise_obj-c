//
//  main.c
//  FoundMe
//
//  Created by Ronald Napa on 5/30/14.
//  Copyright (c) 2014 Ronald Napa. All rights reserved.
//

#include <stdio.h>


int main(int argc, const char * argv[])
{

    for (int ctr = 99; ctr > 0; ctr--) {
        if ((ctr%5)==0)
            printf("You found ME!\n");
        else
            printf("%i \n",ctr);
    }
    return 0;
}

