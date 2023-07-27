#include <stdio.h>
using namespace std;

int main() {
    int num;
    scanf("%d", &num);

    int count[num+1];

    for(int i = 0; i<num+1; i++) {
        count[i] = 0;
    }

    for(int i = 1; i<num+1; i++) {
        for (int j = i; j<num+1; j=j+i) {
            if(j % i == 0) {
                count[j]++;
            }
        }
    }

    for(int i = 1; i<num+1; i++) {
        printf("%d ", count[i]);
    }

    return 0;
}