#include <iostream>
#include <vector>
using namespace std;

int main() {
    int n;
    cin >> n;

    vector<int> primes(1001);
    for(int i = 2; i <= n; i++) {
        int temp = i;
        for(int j = 2; temp > 1; ) {
            if(temp % j == 0) {
                primes[j]++;
                temp /= j;
            } else j++;
        }
    }

    int result = min(primes[2], primes[5]);

    cout << result << endl;

    return 0;
}