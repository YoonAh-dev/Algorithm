#include <iostream>
#include <stack>
using namespace std;

int main() {
    string input;
    stack<char> stack;

    cin >> input;

    for(int i = 0; i < input.size(); i++) {
        if(input[i] == '(') stack.push('(');
        else {
            if(!stack.empty()) stack.pop();
            else {
                cout << "NO" << endl;
                return 0;
            }
        }
    }

    if(stack.empty()) cout << "YES" << endl;
    else cout << "NO" << endl;

    return 0;
}