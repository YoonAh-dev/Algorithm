#include <iostream>
using namespace std;

int main() {
    int n, cnt = 1, res = 1;
    cin >> n;

    while(cnt < n) {
        res++;
        int temp = res;
        for(int i = 2; temp > 1; ) {
            if(i > 5 && temp > 1) break;

            if(temp % i == 0) {
                temp /= i;
            } else i++;
        }

        if(temp <= 1) cnt++;
    }

    cout << res << endl;

    return 0;
}