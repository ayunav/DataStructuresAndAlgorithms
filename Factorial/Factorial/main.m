//
//  main.m
//  Factorial
//
//  Created by Ayuna Vogel on 3/6/16.
//  Copyright © 2016 Ayuna Vogel. All rights reserved.
//

#import <Foundation/Foundation.h>

int factorialRecursive(int n) {
    printf("Calculating F(%d)\n", n);
    if (n == 0) {
        return 1;
    }
    int f = n * factorialRecursive(n - 1);
    printf("f is %d\n", f);
    return f;
}

int factorialIterative(int n) {
    int result = 1;
    
    for(int i = 1; i <= n; i++) {
        result *= i;
    }
    
    return result;
};




int main(int argc, const char * argv[]) {
    @autoreleasepool {

        printf("ITERATIVE \n\n");

        printf("The value of 5! should be %d \n", (5*4*3*2*1));
        printf("The value of 5! is %d \n", factorialIterative(5));
        printf("The value of 0! should be 1 \n");
        printf("The value of 0! is %d \n", factorialIterative(0));
   
        printf("\n");
        printf("RECURSIVE  \n\n");
        
        int n;
        printf("Enter me a number to calculate a factorial value of that number:\n");
        scanf("%d", &n);
        printf("\n");
        printf("\nAwesome. Factorial of number %d is %d. \n\n", n, factorialRecursive(n));
    
        
    }
    return 0;
}
