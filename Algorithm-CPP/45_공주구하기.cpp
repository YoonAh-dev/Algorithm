#include <iostream>
using namespace std;

int main() {
    int n, k;
    cin >> n >> k;

    int arr[n];
    for(int i = 0; i < n; i++) arr[i] = 0;

    int index = 0;
    for(int i = 0; i < n - 1; i++) {
        int cnt = 1;

        while(1) {
            if(cnt == k && arr[index] == 0) {
                arr[index] = 1;
                break;
            } else if(cnt == k && arr[index] == 1) {
                index++;
            } else {
                if(arr[index] == 0) {
                    index++; cnt++;
                } else if(arr[index] == 1) index++;
            }

            if(index == n) index = 0;
        }

        arr[index] = 1;
    }

    for(int i = 0; i < n; i++) {
        if(arr[i] == 0) {
            cout << i + 1 << endl;
            return 0;
        }
    }
}