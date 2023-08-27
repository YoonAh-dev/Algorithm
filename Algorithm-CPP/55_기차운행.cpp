#include <iostream>
#include <stack>
#include <vector>
using namespace std;

int main() {
    vector<char> res;
    stack<int> stack;
    int n, cur = 1, index = 0;
    cin >> n;

    int arr[n];
    for(int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    while(index < n) {
        if(arr[index] == cur) {
            res.push_back('P');
            res.push_back('O');
            index++; cur++;

            while(!stack.empty()) {
                if(stack.top() == cur) {
                    stack.pop();
                    res.push_back('O');
                    cur++;
                } else {
                    break;
                }
            }
        } else {
            stack.push(arr[index]);
            res.push_back('P');
            index++;
        }
    }

    if(!stack.empty()) {
        cout << "impossible" << endl;
        return 0;
    }

    for(int i = 0; i < res.size(); i++) {
        cout << res[i];
    }
    cout << endl;

    return 0;    
}