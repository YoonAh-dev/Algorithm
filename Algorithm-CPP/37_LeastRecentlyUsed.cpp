#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int s, n;
    cin >> s >> n;

    int arr[s];
    for(int i = 0; i < s; i++) arr[i] = 0;

    for(int i = 0; i < n; i++) {
        int input;
        cin >> input;

        if(find(arr, arr+s, input) != arr+s) {
            int index = 0;
            for(int j = 0; j < s; j++) {
                if(arr[j] == input) {
                    index = j;
                    break;
                }
            }

            for(int j = index - 1; j >= 0; j--) {
                arr[j + 1] = arr[j];
            }
        } else {
            for(int j = s - 2; j >= 0; j--) {
                arr[j + 1] = arr[j];
            }
        }

        arr[0] = input;
    }

    for(int j = 0; j < s; j++) cout << arr[j] << " ";

    return 0;
}