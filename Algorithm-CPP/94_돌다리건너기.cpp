#include <iostream>
using namespace std;

int main() {
    ios_base::sync_with_stdio(false);
    int n, rocks[100];
    cin >> n;
    
    rocks[1] = 1;
    rocks[2] = 2;

    for(int i = 3; i <= n + 1; i++) {
        rocks[i] = rocks[i - 2] + rocks[i - 1];
    }

    cout << rocks[n + 1] << endl;
    
    return 0;
}