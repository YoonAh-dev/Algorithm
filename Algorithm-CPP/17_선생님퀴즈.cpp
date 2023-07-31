#include <iostream>
using namespace std;

int add(int n) {
    int sum = 0;

    for(int i = 1; i <= n; i++) {
        sum += i;
    }

    return sum;
}

int main() {
    int n;
    cin >> n;

    for(int i = 0; i < n; i++) {
        int num, answer;
        cin >> num >> answer;

        if (add(num) == answer) {
            cout << "YES" << endl;
        } else {
            cout << "NO" << endl;
        }
    }

    return 0;
}