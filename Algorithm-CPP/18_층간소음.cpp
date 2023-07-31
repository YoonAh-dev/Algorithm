#include <iostream>
using namespace std;

bool calculateValue(int value, int max) {
    return value > max;
}

int main() {
    int n, m, cnt = 0, max = 0;
    cin >> n >> m;

    for(int i = 0; i < n; i++) {
        int value;
        cin >> value;

        if(calculateValue(value, m)) {
            cnt++;
            if(cnt > max) {
                max = cnt;
            }
        } else {
            cnt = 0;
        }
    }

    cout << max << endl;

    return 0;
}