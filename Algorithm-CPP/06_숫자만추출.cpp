#include <iostream>
using namespace std;

int calculateDivisorCount(int num) {
    int count = 0;

    for(int i=1; i<=num; i++) {
        if(num % i == 0) {
            count++;
        }
    }

    return count;
}

int main() {
    char str[50], result[50];
    int index = 0;

    freopen("input.txt", "rt", stdin);

    cin >> str;

    for(int i=0; i<sizeof(str)/sizeof(char); i++) {
        if(str[i] >= 48 && str[i] <= 57) {
            result[index++] = str[i];
        }
    }

    int answer = stoi(result);
    int count = calculateDivisorCount(answer);

    cout << answer << endl;
    cout << count << endl;

    return 0;
}