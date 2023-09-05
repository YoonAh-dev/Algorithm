#include <iostream>
#include <vector>
using namespace std;
int res[100];

int main() {
    freopen("input.txt", "rt", stdin);

    int N, M, ch[100], Q[100];
    int front = -1, back = -1;
    cin >> N >> M;
    vector<int> map[N];

    for(int i = 0; i < M; i++) {
        int node, des;
        cin >> node >> des;
        map[node].push_back(des);
    }

    Q[++back] = 1;
    ch[1] = 1;

    while(front < back) {
        int x = Q[++front];
        for(int i = 0; i < map[x].size(); i++) {
            if(ch[map[x][i]] == 0) {
                res[map[x][i]] = res[x] + 1;
                ch[map[x][i]] = 1;
                Q[++back] = map[x][i];
            }
        }
    }

    for(int i = 2; i <= N; i++) {
        cout << i << " : " << res[i] << endl;
    }
    return 0;
}