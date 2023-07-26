#include <iostream>
using namespace std;

char transformToLower(char letter) {
    if(letter >= 65 && letter <= 90) {
        letter += 32;
    }

    return letter;
}

string eraseWhiteSpace(string str) {
    string result = "";

    for(int i=0; i<str.length(); i++) {
        if(str[i] != ' ') {
            char lowerCase = transformToLower(str[i]);
            result += lowerCase;
        }
    }

    return result;
}

int main() {
    string str;

    freopen("input.txt", "rt", stdin);

    getline(cin, str);

    str = eraseWhiteSpace(str);

    cout << str << endl;
    
    return 0;
}