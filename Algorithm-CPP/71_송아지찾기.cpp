#include <iostream>
#include <queue>
using namespace std;
int ch[10001];

int main() {
    int d[] = {-1, 1, 5};
    queue<pair<int, int>> Q;
    int S, E;
    cin >> S >> E;
 
    Q.push({S, 0});
    ch[S] = 1;

    while(!Q.empty()) {
        pair<int, int> x = Q.front();
        Q.pop();
        for(int i = 0; i < 3; i++) {
            if(x.first + d[i] == E) {
                cout << x.second + 1 << endl;
                return 0;
            } else {
                if((x.first + d[i] >= 0) && (x.first + d[i] <= 10000) && (ch[x.first + d[i]] == 0)) {
                    Q.push({x.first + d[i], x.second + 1});
                    ch[x.first + d[i]] = 1;
                }
            }
        }
    }
}