#include <iostream>
using namespace std;

void recursive(int n) {
    if(n <= 1) {
        cout << n;
        return;
    }
    recursive(n / 2);
    cout << n % 2;
}

int main() {
    int n;
    cin >> n;

    recursive(n);

    return 0;
}