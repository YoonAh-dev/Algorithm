#include <stdio.h>
using namespace std;

int calculateDivisorCount(int num) {
    int count = 0;

    for(int i = 1; i<=num; i++) {
        if (num % i == 0) count++;
    }

    return count;
}

int main() {
    int num;
    
    scanf("%d", &num);

    for(int i = 1; i<=num; i++) {
        int count = calculateDivisorCount(i);
        printf("%d ", count);
    }

    return 0;
}