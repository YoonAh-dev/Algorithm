#include <iostream>
#include <vector>
using namespace std;

int main() {
    freopen("input.txt", "rt", stdin);

    int Q[100], ch[100];
    int front = -1, back = -1;
    vector<int> map[100];

    for(int i = 0; i < 6; i++) {
        int node, des;
        cin >> node >> des;
        map[node].push_back(des);
        map[des].push_back(node);
    }

    Q[++back] = 1;
    ch[1] = 1;
    while(front < back) {
        int res = Q[++front];
        cout << res << " ";

        for(int i = 0; i < map[res].size(); i++) {
            if(ch[map[res][i]] == 0) {
                ch[map[res][i]] = 1;
                Q[++back] = map[res][i];
            }
        }
    }

    return 0;
}