#include <stack>
#include <string>
using namespace std;

bool solution(string s) {
    stack<char> stk;
    
    for(auto ch: s) {
        if (ch == '(') stk.push('(');
        else {
            if (!stk.empty()) stk.pop();
            else return false;
        }
    }
    
    if (!stk.empty()) return false;
    return true;
}