#include <iostream>
using namespace std;

int main() {
    int n, cnt = 1;
    cin >> n;

    int arr[n];
    for(int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    for(int i = 0; i < n - 1; i++) {
        int minIndex = i;

        for(int j = i + 1; j < n; j++) {
            if (arr[minIndex] > arr[j]) minIndex = j;
        }

        int temp = arr[minIndex];
        arr[minIndex] = arr[i];
        arr[i] = temp;
    }

    for(int i = n - 2; i >= 0; i--) {
        if (arr[i + 1] != arr[i]) cnt++;
        
        if (cnt == 3) {
            cout << arr[i] << endl;
            return 0;
        }
    }

}