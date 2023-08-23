#include <iostream>
#include <cmath>
using namespace std;

int main() {
    freopen("input.txt", "rt", stdin);

    for(int i = 0; i < 9; i++) {
        int arr[9];
        double sum = 0;
        for(int j = 0; j < 9; j++) {
            cin >> arr[j];
            sum += arr[j];
        }

        int avg = round(sum / 9);
        int min = 100, res = 0;
        for(int j = 0; j < 9; j++) {
            if(abs(avg - arr[j]) < min) {
                min = abs(avg - arr[j]);
                res = arr[j];
            } else if(abs(avg - arr[j]) == min && res < arr[j]) {
                res = arr[j];
            }
        }

        cout << avg << " " << res << endl;
    }

    return 0;
}