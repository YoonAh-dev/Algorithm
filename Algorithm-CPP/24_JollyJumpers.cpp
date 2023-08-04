#include <iostream>
#include <math.h>
using namespace std;

int main() {
    int n;
    cin >> n;

    int arr[n], jumpers[n];
    for(int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    for(int i = 0; i < n; i++) {
        jumpers[i] = 0;
    }

    for(int i = 0; i < n - 1; i++) {
        int result = abs(arr[i+1] - arr[i]);
        if(result < n && result > 0) {
            jumpers[result] = 1;
        } else {
            cout << "NO" << endl;
            return 0;
        }
    }

    for(int i = 1; i < n; i++) {
        if(jumpers[i] == 0) {
            cout << "NO" << endl;
            return 0;
        }
    }

    cout << "YES" << endl;

    return 0;
}