#include <iostream>
#include <string>
using namespace std;

int main() {
    int index = 0;
    string str, s[4];

    cin >> str;

    for(int i = 0; str[i] != '\0'; i++) {
        if(isdigit(str[i])) {
            string temp = "";
            int cnt = 0;
            for(int j = i; isdigit(str[j]) != 0; j++) {
                temp += str[j];
                cnt++;
            }
            i += cnt - 1;
            s[index++] = temp;
        } else {
            s[index++] = str[i];
        }

        if(isdigit(str[i]) == 0 && isdigit(str[i + 1]) == 0) {
            s[index++] = "1";
        }
    }

    cout << stoi(s[1]) * 12 + stoi(s[3]) * 1 << endl;

    return 0;
}