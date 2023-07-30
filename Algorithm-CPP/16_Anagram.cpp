#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    string a, b;

    cin >> a;
    cin >> b;

    if (a.length() != b.length()) {
        cout << "NO" << endl;
        return 0;
    }

    sort(a.begin(), a.end());
    sort(b.begin(), b.end());

    for(int i = 0; a[i] != '\0'; i++) {
        if (a[i] != b[i]) {
            cout << "NO" << endl;
            return 0;
        }
    }

    cout << "YES" << endl;

    return 0;
}