#include <iostream>
using namespace std;

int main() {
    int n, k, sum = 0, max = 0;
    cin >> n >> k;

    int temps[n];
    for(int i = 0; i < n; i++) {
        cin >> temps[i];
    }

    for(int i = 0; i < k; i++) {
        sum += temps[i];
        max = sum;
    }

    for(int i = k; i < n; i++) {
        sum += temps[i] - temps[i - k];
        if (sum > max) {
            max = sum;
        }
    }

    cout << max << endl;

    return 0;
}