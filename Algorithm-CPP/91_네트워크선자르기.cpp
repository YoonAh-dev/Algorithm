#include <iostream>
using namespace std;

int main() {
    ios_base::sync_with_stdio(false);

    int n, lines[50];
    cin >> n;

    lines[1] = 1;
    lines[2] = 2;

    for(int i = 3; i <= n; i++) {
        lines[i] = lines[i - 2] + lines[i - 1];
    }

    cout << lines[n] << endl;

    return 0;
}