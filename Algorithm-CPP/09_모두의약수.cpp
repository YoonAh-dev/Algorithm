#include <iostream>
using namespace std;

int calculateDivisorCount(int num) {
    int count = 0;

    for(int i = 1; i<=num; i++) {
        if (num % i == 0) count++;
    }

    return count;
}

int main() {
    int num;
    cin >> num;

    for(int i = 1; i<=num; i++) {
        int count = calculateDivisorCount(i);
        cout << count << ' ';
    }

    return 0;
}