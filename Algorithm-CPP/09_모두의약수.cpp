#include <stdio.h>
using namespace std;

int main() {
    int num;
    scanf("%d", &num);

    int count[num];

    for(int i = 0; i<num; i++) {
        count[i] = 0;
    }

    for(int i = 0; i<num; i++) {
        for (int j = i; j<num; j++) {
            if((j + 1) % (i + 1) == 0) {
                count[j]++;
            }
        }
    }

    for(int i = 0; i<num; i++) {
        printf("%d ", count[i]);
    }

    return 0;
}