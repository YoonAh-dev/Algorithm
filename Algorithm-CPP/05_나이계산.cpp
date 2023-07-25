#include <iostream>
using namespace std;

int toInt(char num) {
    return num - '0';
}

int main() {
    char id[14];
    char sex;
    int year;

    cin >> id;

    switch (id[7]) {
    case '1':
        year = 1900;
        sex = 'M';
        break;
    case '2':
        year = 1900;
        sex = 'W';
        break;
    case '3':
        year = 2000;
        sex = 'M';
        break;
    case '4':
        year = 2000;
        sex = 'W';
        break;
    default:
        break;
    }

    int result = 2019 - (year + toInt(id[0]) * 10 + toInt(id[1])) + 1;
    cout << result << " " << sex << endl;

    return 0;
}