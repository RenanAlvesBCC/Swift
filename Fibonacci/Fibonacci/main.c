//
//  main.c
//  Fibonacci
//
//  Created by Renan Alves on 05/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    int entrada = 10;
    
    printf("%d", calcula(entrada));
    
    return 0;
}

int calcula(int n){
    
    if(n==1){
        return n;
    }else{
        return printf("%d", calcula(n-1)+(n-2));
    }
}
