#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;

    int arr[n];
    for(int i = 0; i < n; i++) arr[i] = n;

    for(int i = 0; i < n - 1; i++) {
        int input, cnt = 0;
        cin >> input;

        for(int j = 0; j < n; j++) {
            if(arr[j] == n && cnt == input) {
                arr[j] = i + 1;
                break;
            }
            if(arr[j] > i + 1) cnt++;
        }
    }

    for(int i = 0; i < n; i++) cout << arr[i] << " ";

    return 0;
}