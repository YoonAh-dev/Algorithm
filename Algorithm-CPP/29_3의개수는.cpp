#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int n, cnt = 0;
    cin >> n;

    for(int i = 3; i <= n; i++) {
        int temp = i;
        while(temp > 1) {
            if(temp % 10 == 3) cnt++;
            temp /= 10; 
        }
    }

    cout << cnt << endl;

    return 0;
}