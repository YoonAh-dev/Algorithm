#include <iostream>
#include <queue>
using namespace std;

int main() {
    int d[] = {-1, 1, 5};
    queue<pair<int, int>> Q;
    int S, E;
    cin >> S >> E;

    Q.push({S, 0});

    while(!Q.empty()) {
        pair<int, int> x = Q.front();
        Q.pop();
        for(int i = 0; i < 3; i++) {
            if(x.first + d[i] == E) {
                cout << x.second + 1 << endl;
                return 0;
            } else {
                Q.push({x.first + d[i], x.second + 1});
            }
        }
    }
}