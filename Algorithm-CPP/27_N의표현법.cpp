#include <stdio.h>
#include <vector>
using namespace std;

bool isPrime(int x) {
    int cnt = 0;

    for(int i = 2; i <= x; i++) {
        if(x % i == 0) cnt++;
    }

    if(cnt > 1) return false;
    else return true;
}

int main() {
    int n;
    vector<int> primes(1001);

    scanf("%d", &n);

    for(int i = 2; i <= n; i++) {
        int temp = i;
        for(int j = 2; temp > 1; ) {
            if(temp % j == 0) {
                primes[j]++;
                temp /= j;
            } else j++;
        }
    }

    printf("%d! = ", n);
    for(int i = 2; i <= n; i++) {
        if(isPrime(i)) {
            printf("%d ", primes[i]);
        }
    }

    return 0;
}