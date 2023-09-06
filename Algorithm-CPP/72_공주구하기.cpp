#include <iostream>
#include <queue>
using namespace std;

int main() {
    queue<int> Q;
    int N, K;
    cin >> N >> K;

    for(int i = 1; i <= N; i++) Q.push(i);

    while(Q.size() > 1) {
        for(int i = 0; i < K - 1; i++) {
            int x = Q.front();
            Q.pop();
            Q.push(x);
        }
        Q.pop();
    }

    cout << Q.front() << endl;
    return 0;
}