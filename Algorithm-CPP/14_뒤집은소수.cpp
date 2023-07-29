#include <iostream>
#include <string>
using namespace std;

int isPrime(int x) {
    if(x <= 1) { return 0; }

    int cnt = 0;
    for(int i=1; i<(x/2 + 1); i++) {
        if(x % i == 0) {
            cnt++;
        }
    }

    if(cnt <= 1) return 1;
    else return 0;
}

int reverse(int x) {
    string n;

    while(x != 0) {
        int num = x % 10;
        x /= 10;
        n += to_string(num);
    }

    return stoi(n);
}

int main() {
    int n;
    string result;

    cin >> n;

    for(int i=0; i<n; i++) {
        int num;
        cin >> num;

        int reverseNum = reverse(num);
        if (isPrime(reverseNum)) {
            result += to_string(reverseNum) + ' ';
        }
    }

    cout << result << endl;
}
