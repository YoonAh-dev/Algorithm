#include <iostream>
#include <stack>
using namespace std;

stack<int> st;

void recursive(int n) {
    if(n == 0) return;
    st.push(n);
    recursive(n - 1);
}

int main() {
    int n;
    cin >> n;

    recursive(n);

    while(!st.empty()) {
        cout << st.top() << " ";
        st.pop();
    }

    return 0;
}