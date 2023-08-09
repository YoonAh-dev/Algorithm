#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;

    int arr[n];
    for(int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    for(int i = 0; i < n - 1; i++) {
        int min = arr[i];
        int temp = i;

        for(int j = i + 1; j < n; j++) {
            if (min > arr[j]) {
                min = arr[j];
                temp = j;
            }
        }

        arr[temp] = arr[i]; 
        arr[i] = min;
    }

    for(int i = 0; i < n; i++) {
        cout << arr[i] << " ";
    }

    return 0;
}