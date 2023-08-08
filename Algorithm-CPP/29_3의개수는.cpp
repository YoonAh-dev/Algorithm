#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int n, result = 0;
    cin >> n;

    int i = 2;
    while(1) {
        if(pow(10, i) > n) {
            if(n > 99) {
                int m = n / pow(10, i - 1);
                result += m * 20;
                n = n % int(pow(10, i - 1));
            } else {
                int cnt = 0;
                for(int i = 3; i <= n; i++) {
                    if(i / 10 == 3) cnt++;
                    if(i % 10 == 3) cnt++;
                }
                result += cnt;
                break;
            }
        } else i++;
    }

    cout << result << endl;

    return 0;
}