#include <iostream>
#include <queue>
using namespace std;

int main() {
    priority_queue<int> pq;
    int input = 0;

    while(input != -1) {
        cin >> input;

        if(input == 0) {
            if(pq.empty()) {
                cout << "-1" <<  endl;
                continue;
            }
            cout << pq.top() << endl;
            pq.pop();
        } else {
            pq.push(input);
        }
    }

    return 0;
}