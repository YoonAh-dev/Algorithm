#include <iostream>
using namespace std;

char compareResult(int a, int b) {
    if(a == b) {
        return 'D';
    } else if(a == 1 || b == 1) {
        if(a % 3 > b % 3) return 'A';
        else return 'B';
    } else if(a > b) {
        return 'A';
    } else {
         return 'B';
    }
}

int main() {
    int n;
    cin >> n;

    int a[n], b[n];
    for(int i = 0; i < n; i++) {
        int m;
        cin >> m;
        a[i] = m;
    }

    for(int i = 0; i < n; i++) {
        int m;
        cin >> m;
        b[i] = m;
    }

    for(int i = 0; i < n; i++) {
        cout << compareResult(a[i], b[i]) << endl;
    }

    return 0;
}