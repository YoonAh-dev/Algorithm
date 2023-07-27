#include <iostream>
#include <stack>
using namespace std;

int main() {
    string str;
    stack<char> stack;

    cin >> str;

    for(int i = 0; i<str.length(); i++) {
        if(str[i] == '(') {
            stack.push(str[i]);
        } else {
            if(stack.empty()) {
                cout << "NO" << endl;
                return 0;
            } else {
                stack.pop();
            }
        }
    }

    if(stack.empty()) {
        cout << "YES" << endl;
    } else {
        cout << "NO" << endl;
    }

    return 0;
}