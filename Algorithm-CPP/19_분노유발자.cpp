#include <cmath>
#include <iostream>
using namespace std;

int main() {
    int n, cnt = 0;
    cin >> n;

    int students[n];
    for(int i = 0; i < n; i++) {
        int height;
        cin >> height;
        students[i] = height;
    }

    for(int i = 0; i < n - 1; i++) {
        bool flag = true;
        int max = students[i];
        for(int j = i + 1; j < n; j++) {
            if(students[j] >= max) {
                flag = false;
                break;
            }
        }

        if(flag) cnt++;
    }

    cout << cnt << endl;

    return 0;
} 