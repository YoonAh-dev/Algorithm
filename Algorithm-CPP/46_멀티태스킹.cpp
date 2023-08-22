#include <iostream>
using namespace std;

int main() {
    int n, k;
    cin >> n;

    int arr[n];
    for(int i = 0; i < n; i++) cin >> arr[i];

    cin >> k;

    int i = 0, index = 0;
    while(1) {
        if(arr[index] != 0) {
            arr[index++]--;
            i++;
        } else index++;

        if(index == n) index = 0;
        if(i == k) break;
    }

    if(arr[index] != 0) {
        cout << index + 1 << endl;
        return 0;
    } else {
        for(int i = 0; i < n; i++) {
            if(arr[index] != 0) {
                cout << index + 1 << endl;
                return 0;
            } else index++;

            if(index == n) index = 0;
        }

        cout << "-1" << endl;
        return 0;
    }
}