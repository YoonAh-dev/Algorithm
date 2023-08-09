#include <iostream>
#include <string>
using namespace std;

int main() {
    int res = 0;
    string str;
    cin >> str;

    for(int i = 0; str[i] != '\0'; ) {
        if(isdigit(str[i + 1]) != 0) {
            if (str[i] == 'C') res += 12 * (str[i + 1] - '0');
            else if (str[i] == 'H') res += 1 * (str[i + 1] - '0');
            i += 2;
        } else {
            if (str[i] == 'C') res += 12;
            else if (str[i] == 'H') res += 1;
            i++;
        }
    }

    cout << res << endl;

    return 0;
}