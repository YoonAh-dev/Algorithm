#include <iostream>
#include <cmath>
using namespace std;

// 12_숫자의 총 개수(large) 문제도 해결 가능
int calculateDigit(int n) {
    int cnt = 0;

    while(n != 0) {
        n /= 10;
        cnt++;
    }

    return cnt;
}

int main() {
    int n, sum = 0;

    cin >> n;

    int totalDigit = calculateDigit(n);

    for(int i = 0; i < totalDigit; i++) {
        if (i != totalDigit - 1) {
            sum += (pow(10, i + 1) - pow(10, i)) * (i + 1);
        } else {
            sum += ((n - pow(10, i)) + 1) * (i + 1);
        }
    }

    cout << sum << endl;
    
    return 0;
}
