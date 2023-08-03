#include <iostream>
using namespace std;

int main() {
    int n, k, max = -21400000;
    cin >> n >> k;

    int temps[n];
    for(int i = 0; i < n; i++) {
        cin >> temps[i];
    }

    for(int i = 0; i < n - k + 1; i++) {
        int sum = 0;
        for(int j = i; j < i + k; j++) {
            sum += temps[j];
        }

        if(sum > max) {
            max = sum;
        }
    }

    cout << max << endl;

    return 0;
}