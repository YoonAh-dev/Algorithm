#include <iostream>
#include <stack>
using namespace std;

int main() {
    stack<char> stack;
    int n, k;
    cin >> n >> k;

    while(n >= k) {
        int rest = n % k;
        if(rest < 10) rest += 48;
        else rest += 55;
        stack.push((char)rest);

        n /= k;

        if(n < k){
            if(n >= 10) stack.push((char)(n + 55));
            else stack.push((char)(n + 48));
        }
    }

    while(!stack.empty()) {
        cout << stack.top();
        stack.pop();
    }
    cout << endl;

    return 0;
}